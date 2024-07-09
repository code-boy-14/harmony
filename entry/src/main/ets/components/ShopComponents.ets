import { commodityModel } from '../models/commodityModel'
import { ReqCommodityModel } from '../models/requestModel'
import request from '../utils/request'

@Component
export struct ShopComponents {
  @State
  commodityData: commodityModel[] = []

  build() {
      /*
       * 商品列表
       */
      Column() {
        ForEach(this.commodityData, (item: commodityModel) => {
          Row() {
            Image($rawfile(item.img))
              .layoutWeight(1)
              .borderRadius(8)

            Column() {
              Text(item.name)
                .width('100%')
                .fontSize(20)
                .fontWeight(FontWeight.Bold)
                .maxLines(2)
                .margin({ bottom: 10 })
                .textAlign(TextAlign.Start)

              Text(item.price)
                .width('100%')
                .fontSize(20)
                .fontColor('#6B6B6B')
                .textAlign(TextAlign.Start)
            }
            .layoutWeight(1)
            .padding(5)
          }
          .width('100%')
          .height('18%')
          .padding(5)
          .border({
            width: { bottom: '3px' },
            color: { bottom: '#DCDCDC' },
          })

        })
      }
      .width('100%')
      .height('100%')
  }

  async aboutToAppear() {
    let result = await request.get<string, ReqCommodityModel>('/commodity')
    this.commodityData = result.data
  }
}