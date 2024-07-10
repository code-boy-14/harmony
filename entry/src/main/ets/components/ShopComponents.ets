import { commodityModel } from '../models/commodityModel'
import { ReqCommodityModel } from '../models/requestModel'
import request from '../utils/request'
import { router } from '@kit.ArkUI'

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
        .onClick(() => {
          router.pushUrl({
            url: 'pages/Commodity',
            params: {
              id: item.id
            }
          })
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