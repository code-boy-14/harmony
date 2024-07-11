import { classModel } from '../models/classModel'
import { ReqClassModel } from '../models/requestModel'
import request from '../utils/request'
import { promptAction, router } from '@kit.ArkUI'

@Component
export struct ClassComponents {
  @State
  classData: classModel[] = []

  build() {

    Column() {
      /*
       * 图片轮播
       */
      Swiper() {
        ForEach(this.classData.slice(0, 3), (item: classModel) => {
          Image($rawfile(item.img))
            .width('100%')
            .borderRadius(10)
          // .onClick(() => {
          //   router.pushUrl({
          //     url: 'pages/Article',
          //     params: {
          //       id: item.id
          //     }
          //   })
          // })
        })
      }
      .autoPlay(true)
      .indicator( // 设置圆点导航点样式
        new DotIndicator()
          .itemWidth(8)
          .itemHeight(8)
          .selectedItemWidth(8)
          .selectedItemHeight(8)
          .color(Color.Gray)
          .selectedColor('#fff')

      )
      .margin('20')


      /*
       * 四六级
       */
      Column() {
        Text('四六级')
          .width('100%')
          .fontSize(20)
          .fontWeight(600)
          .fontColor('#000')
          .textAlign(TextAlign.Start)
          .margin({ bottom: 10 })

        Text('专属计划+精华课程+定制练习')
          .width('100%')
          .fontSize(16)
          .fontWeight(500)
          .fontColor('#686868')
          .textAlign(TextAlign.Start)
          .margin({ bottom: 10 })

        ForEach(this.classData, (item: classModel) => {
          if (item.course == 'CET') {


            Row() {
              Image($rawfile(item.img))
                .layoutWeight(3)
                .borderRadius(8)

              Column() {
                Text(item.name)
                  .width('100%')
                  .fontSize(16)
                  .fontWeight(600)
                  .maxLines(2)
                  .margin({ bottom: 20 })
                  .textAlign(TextAlign.Start)

                Row() {
                  Text('¥' + item.price)
                    .fontSize(25)
                    .fontWeight(600)
                    .fontColor('#15c5a1')
                    .textAlign(TextAlign.Start)

                  Button() {
                    Image($rawfile('collect.png'))
                      .width(25)
                  }
                  .width(30)
                  .height(30)
                  .type(ButtonType.Normal)
                  .backgroundColor('#fff')
                  .onClick(() => {
                    const ids: string[] = AppStorage.get('collectIds') || []
                    const result = ids.find((id: string) => id == item.id)
                    if (!result) {
                      AppStorage.SetOrCreate('collectIds', [...ids, item.id])
                      promptAction.showToast({
                        message: '收藏成功~'
                      })
                    } else {
                      promptAction.showToast({
                        message: '已经收藏过了~'
                      })
                    }
                  })

                }
                .width('100%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .layoutWeight(4)
              .padding(10)
            }
            .width('100%')
            .height('18%')
          }
        })

      }
      .margin(20)


      /*
       * 考研
       */
    }
  }

  async aboutToAppear() {
    let result = await request.get<string, ReqClassModel>('/class')
    this.classData = result.data
  }
}