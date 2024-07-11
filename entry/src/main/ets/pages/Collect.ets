import { PageHead } from '../components/PageHead';
import { classModel } from '../models/classModel';
import { commodityModel } from '../models/commodityModel';
import { referenceModel } from '../models/referenceMode';
import { ReqClassModel, ReqCommodityModel } from '../models/requestModel';
import request from '../utils/request';

@Entry
@Component
struct Collect {
  //收藏列表的状态变量
  @State clctList:classModel[]=[] as classModel[]

  //收藏所有的id值
  @StorageLink('collectIds') clctIds:string[]=AppStorage.get('collectIds') as string[]

  @Builder
  ItemDelete(item:classModel){
    Column(){
      Image($rawfile('remove.png'))
        .width(30)

      Text('删除')
        .fontColor(Color.White)

    }
    .onClick(()=>{
      this.clctList.splice(this.clctList.findIndex((elem)=>elem==item),1)
      console.log('id is '+item.id)

      console.log(this.clctIds.toString())
      console.log(typeof this.clctIds)
      this.clctIds.splice(this.clctIds.indexOf(item.id),1)
    })
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .padding({left:20,right:20})
    .backgroundColor(Color.Red)
  }



  build() {
    Column(){
      PageHead({title:'收藏'})
      Column(){
        List(){
          ForEach(this.clctList,(item:classModel)=>{
            ListItem(){
              Row() {
                Image($rawfile(item.img))
                  .padding(10)
                  .layoutWeight(1)
                  .borderRadius(8)

                Column() {
                  Text(item.name)
                    .width('100%')
                    .fontSize(18)
                    .maxLines(2)
                    .margin({ bottom: 10 })
                    .textAlign(TextAlign.Start)

                  Text(item.price+'贝壳')
                    .width('100%')
                    .fontSize(20)
                    .fontWeight(600)
                    .fontColor('#15c5a1')
                    .textAlign(TextAlign.Start)
                }
                .layoutWeight(1)
                .padding(10)
              }
              .width('100%')
              .height('18%')
              .padding(5)
              .border({
                width: { bottom: '3px' },
                color: { bottom: '#DCDCDC' },
              })
            }
            .swipeAction({end:this.ItemDelete(item),edgeEffect:SwipeEdgeEffect.Spring})

          })
        }
        .edgeEffect(EdgeEffect.Spring)
        .divider({strokeWidth:1,color:'#eee'})
      }
      .layoutWeight(1)
    }
    .width('100%')
  }

  async aboutToAppear(){
    const ids:string[]=AppStorage.get('collectIds')||[]
    const listResult=await request.get<string, ReqClassModel>('/class')
    for(let id of ids){
      let result=listResult.data.find((item:classModel)=>item.id==id)
      if(result){
        this.clctList.push(result)
      }
    }

    //////假数据///////成功
    // for(let data of listResult.data){
    //   this.clctList.push(data)
    // }
  }
}