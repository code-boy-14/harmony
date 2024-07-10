import { PageHead } from '../components/PageHead';
import { commodityModel } from '../models/commodityModel';
import { referenceModel } from '../models/referenceMode';
import { ReqCommodityModel } from '../models/requestModel';
// import { request } from '@kit.BasicServicesKit';
import request from '../utils/request'

@Entry
@Component
struct Order {
  //订单列表的状态变量
  @State orderList:commodityModel[]=[] as commodityModel[]

  //订单的所有id
  @StorageLink('orderIds') orderIds:referenceModel=AppStorage.get('orderIds') as referenceModel

  build() {
    Column(){
      PageHead({title:'订单'})
      Column(){
        List(){
          ForEach(this.orderList,(item:commodityModel)=>{
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

  async onPageShow(){
    const ids:string[]=AppStorage.get('orderIds')||[]
    const listResult=await request.get<string, ReqCommodityModel>('/commodity')
    for(let id of ids){
      let result=listResult.data.find((item:commodityModel)=>item.id==id)
      if(result){
        this.orderList.push(result)
      }
    }
  }

}