import { ParamsModel } from '../models/paramsModel'
import { commodityModel } from '../models/commodityModel'

import { promptAction, router } from '@kit.ArkUI'
import request from '../utils/request'
import { ReqCommodityModel } from '../models/requestModel'


@Entry
@Component
struct Article {
  @State
  r: commodityModel = {} as commodityModel

  build() {
    Column() {
      /*
       * 导航区
       */
      Stack({ alignContent: Alignment.TopStart }) {
        Column() {
          Image($rawfile('back.png')).width(28)
        }
        .width(30)
        .alignRules({
          left: { anchor: '__container__', align: HorizontalAlign.Start },
          top: { anchor: '__container__', align: VerticalAlign.Top }
        })
        .margin({ top: 15, left: 10 })
        .zIndex(1)
        .onClick(() => {
          router.back()
        })

        Text('扇贝')
          .height('100%')
          .width('100%')
          .fontSize(24)
          .fontWeight(600)
          .fontColor('#8a8a8a')
          .textAlign(TextAlign.Center)
      }
      .height(60)
      .backgroundColor('#fff')
      .width('100%')
      .border({
        width: { bottom: '3px' },
        color: { bottom: '#DCDCDC' },
      })

      /*
       * 内容区
       */
      Scroll() {
        Column() {
          Column() {
            Image($rawfile(this.r.img))
              .margin(15)
              .borderRadius(5)


            Text(this.r.name)
              .width('100%')
              .fontSize(16)
              .fontWeight(600)
              .fontColor('#000')
              .margin({ left: 30 })
              .textAlign(TextAlign.Start)

            Text(this.r.price + '贝壳')
              .width('100%')
              .fontSize(16)
              .fontWeight(700)
              .fontColor('#15c5a1')
              .margin({ top: 10, left: 30, bottom: 10 })
              .textAlign(TextAlign.Start)
          }
          .width('100%')
          .border({
            width: { bottom: '50px' },
            color: { bottom: '#eee' },
          })

          Column() {
            Text('——使用说明——')
              .width('100%')
              .fontColor('#686868')
              .margin(20)
              .textAlign(TextAlign.Center)

            Text(this.r.description)
              .fontSize(16)
              .fontColor('#686868')
              .fontWeight(500)
              .margin({ left: 25, right: 25 })
              .lineHeight(24)
          }
        }
      }
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .layoutWeight(1)
      .backgroundColor('#fff')

      Stack({ alignContent: Alignment.Bottom }) {
        Button() {
          Text('立 即 兑 换')
            .fontColor('#fff')
        }
        .width('100%')
        .height(40)
        .type(ButtonType.Normal)
        .borderRadius(20)
        .backgroundColor('#15c5a1')
        .shadow({
          radius: 10,
          color: Color.Gray,
          offsetX: 5,
          offsetY: 5
        })
        .onClick(() => {
          const ids: string[] = AppStorage.get('orderIds') || []
          const result = ids.find((id: string) => id == this.r.id)
          if (!result) {
              AppStorage.SetOrCreate('orderIds',[...ids,this.r.id])
            promptAction.showToast({
              message:'兑换成功~'
            })
          }else{
            promptAction.showToast({
              message:'已经兑换过了~'
            })
          }
        })

      }
      .height(70)
      .padding(15)
      .borderRadius(25)
      .border({
        width: { top: '3px' },
        color: { top: '#DCDCDC' },
      })
    }
  }

  async aboutToAppear() {
    const params: ParamsModel = router.getParams() as ParamsModel
    const resultList = await request.get<string, ReqCommodityModel>('/commodity')
    const result = resultList.data.find((item: commodityModel) => item.id == params.id)
    this.r = result as commodityModel
  }
}