import { PageHead } from '../components/PageHead';
import { commodityModel } from '../models/commodityModel';
import { referenceModel } from '../models/referenceMode';
import { ReqCommodityModel } from '../models/requestModel';
import request from '../utils/request';

@Entry
@Component
struct Collect {
  //收藏列表的状态变量
  @State clctList:commodityModel[]=[] as commodityModel[]

  //收藏所有的id值
  @StorageLink('collectIds') clctIds:referenceModel=AppStorage.get('collectIds') as referenceModel

  build() {
    Column(){
      PageHead({title:'收藏'})
      Column(){
        List(){
          ForEach(this.clctList,(item:commodityModel)=>{
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
          })
        }
        .edgeEffect(EdgeEffect.Spring)
        .divider({strokeWidth:1,color:'#eee'})
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
  }

  async aboutToAppear(){
    const ids:string[]=AppStorage.get('collectIds')||[]
    const listResult=await request.get<string, ReqCommodityModel>('/commodity')
    for(let id of ids){
      let result=listResult.data.find((item:commodityModel)=>item.id==id)
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