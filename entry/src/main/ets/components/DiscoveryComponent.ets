@Extend(Row)
function rowBoxStyle() {
  // .margin({
  //   top: 10,
  //   left: 10,
  //   right: 10,
  //   bottom: 10
  // })
  .padding({
    top: 10,
    left: 10,
    right: 10,
    bottom: 10
  })
  .backgroundColor('#fff')
  .borderRadius(10)
  .shadow(ShadowStyle.OUTER_DEFAULT_LG)
}

@Preview
@Component
export struct DiscoveryComponent {
  build() {

    Scroll() {
      // Text('fff')

      Column() {

        Column() {
          //////////////////////////////////

          Column() { //每日一句
            Row() {
              Text('每日一句')
                .fontSize(14)
                .backgroundBlurStyle(BlurStyle.Thin,
                  { colorMode: ThemeColorMode.LIGHT, adaptiveColor: AdaptiveColor.DEFAULT, scale: 1.0 })
                .borderRadius(8)
                .fontWeight(FontWeight.Bold)
                .fontColor('#fff')
                .opacity(1)
                .padding({
                  top: 4,
                  left: 5,
                  right: 5,
                  bottom: 4
                })//.opacity(0.5)
                .margin({ left: 10 })
              Text('jul.08')
                .margin({ right: 10 })
                .fontColor('#fff')

            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            .alignSelf(ItemAlign.Start)


            Row() {
              Text('5 Very Uncomfortable Truths You Should Know about Life')
                .fontColor('#fff')
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceAround)

          }
          .backgroundImage($rawfile('flower.jpg'),
            ImageRepeat.NoRepeat)
          .backgroundImageSize(ImageSize.Cover)
          // .backgroundBrightness({ rate: 0.5, lightUpDegree: -0.1 })
          .height(100)
          .justifyContent(FlexAlign.SpaceAround)
          .margin({
            top: 10,
            left: 10,
            right: 10,
            bottom: 10
          })
          .padding({
            top: 10,
            left: 10,
            right: 10,
            bottom: 10
          })
          .backgroundColor('#fff')
          .borderRadius(10)
          .shadow(ShadowStyle.OUTER_DEFAULT_LG)

//////////////////////////////////////////////

          Row() {
            Row() { //同桌
              Column() {
                Row() {
                  Text('同桌')
                    .fontColor('#2299d2')
                    .fontWeight(FontWeight.Bold)//.layoutWeight(1)
                      // .textAlign(TextAlign.Center)
                    .fontSize(24)
                    .margin({ right: 10 })
                  Text('找个同桌>')
                    .fontColor('#fff')
                    .fontSize(14)
                    .textAlign(TextAlign.Center)
                    .backgroundColor('#2299d2')
                    .borderRadius(8)
                    .padding({
                      top: 3,
                      left: 5,
                      right: 5,
                      bottom: 3
                    })
                  // Image($rawfile('walkman.png'))
                  //   .width(30)
                }
                .layoutWeight(1)

                Text('新一期挑战开始了！')
                  .fontColor('#2299d2')
                  .fontSize(15)
                  .textAlign(TextAlign.Center)
              }
              .justifyContent(FlexAlign.Center)
              .alignItems(HorizontalAlign.Start)

            }
            .height('100%')
            .backgroundColor('#fff')
            .layoutWeight(1)
            .margin({ left: 10, right: 10 })
            .rowBoxStyle()
            //.justifyContent(FlexAlign.Center)
            .linearGradient({
              angle: 45,
              colors: [[0xa8e9ff, 0.3], [0xF0F8FF, 1.0],]
            })

            Row() { //打卡挑战
              Column() {
                Row() {
                  Text('打卡挑战')
                    .fontWeight(FontWeight.Bold)//.layoutWeight(1)
                      //.textAlign(TextAlign.Center)
                    .fontSize(24)
                    .fontColor('#fc6b01')
                    .margin({ right: 10 })
                  Text('NEW')
                    .fontSize(14)
                    .fontColor('#fff')
                    .backgroundColor('#fc6b01')
                    .borderRadius(8)
                    .padding({
                      top: 3,
                      left: 5,
                      right: 5,
                      bottom: 3
                    })
                  // Image($rawfile('walkman.png'))
                  //   .width(30)

                }
                .layoutWeight(1)

                Text('坚持打卡·集徽章共成长')
                  .fontSize(14)
                  .fontColor('#fc6b01')
              }
              .justifyContent(FlexAlign.Center)
              .alignItems(HorizontalAlign.Start)

            }
            .height('100%')
            .backgroundColor('#fff')
            .layoutWeight(1)
            .margin({ right: 10 })
            .rowBoxStyle()
            .linearGradient({
              angle: 45,
              colors: [[0xffe7c3, 0.3], [0xFFFFF0, 1.0],]
            })

          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceEvenly)
          .height(100)
          .padding({ top: 10, bottom: 10 })

        }
        .width('100%')
        .height(220)


        Column() {
          Row() {
            Text('词文串学')
              .fontSize(18)
            //.alignSelf(ItemAlign.Start)

            Text('更多  >')
              .fontSize(12)
              .fontColor('#A9A9A9')
            //.alignSelf(ItemAlign.End)
          }
          .margin({ bottom: 10 })
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)


          Row() {
            Image("https://media-image1.baydn.com/public_image_upload/vwpqcw/ed239e4f5384cad46c72a6fa7e911860.10a3fba5e0280250a747e999303a5e37.png")
              .width('25%')
              .height('100%')
              .objectFit(ImageFit.Cover)
              .borderRadius(10)

            Column() {
              Text('预计今日要背的18个单词')
                .textAlign(TextAlign.Start)//.width('90%')
                .fontSize(14)
                .fontColor('#fff')
                .backgroundColor('#66CDAA')
                .borderRadius(5)
                .padding({
                  top: 3,
                  bottom: 3,
                  left: 5,
                  right: 5
                })


              Text('考研形近易混词汇')
                .fontSize(10)
                .fontColor('#A9A9A9')
                .width('100%')
                .margin({ top: 2, bottom: 2 })

              Text('AI Heart Attack Scans Could Soon Be Rolled out Across UK')
                .maxLines(1)//.fontColor('#696969')
                .margin({ top: 2, bottom: 2 })
                .width('100%')
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(12)
              Text('心脏扫描预测未来十年心脏病发作风险')
                .maxLines(1)//.fontColor('#696969')
                .width('100%')
                .margin({ top: 2, bottom: 2 })
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(10)

            }
            .margin({ left: 10, right: 10 })
            // .width('100%')
            .layoutWeight(1)
            .alignItems(HorizontalAlign.Start)

          }
          .width('100%')
          .height(70)
          .borderRadius(10)
          .backgroundColor('#fff')
          .margin({ bottom: 15 })

          Row() {
            Image($rawfile('wordpic.jpg'))
              .width('25%')
              .height('100%')
              .objectFit(ImageFit.Cover)
              .borderRadius(10)

            Column() {
              Text('覆盖上周学习的5个生词')
                .textAlign(TextAlign.Start)//.width('90%')
                .fontSize(14)
                .fontColor('#fff')
                .backgroundColor('#66CDAA')
                .borderRadius(5)
                .padding({
                  top: 3,
                  bottom: 3,
                  left: 5,
                  right: 5
                })


              Text('636词|时长4分39秒')
                .fontSize(10)
                .fontColor('#A9A9A9')
                .width('100%')
                .margin({ top: 2, bottom: 2 })

              Text('Why Book Stores Matter?')
                .maxLines(1)//.fontColor('#696969')
                .margin({ top: 2, bottom: 2 })
                .width('100%')
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(12)
              Text('我们为什么需要书店？')
                .maxLines(1)//.fontColor('#696969')
                .width('100%')
                .margin({ top: 2, bottom: 2 })
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(10)

            }
            .margin({ left: 10, right: 10 })
            .width('100%')
            .layoutWeight(1)
            .alignItems(HorizontalAlign.Start)

          }
          .width('100%')
          .height(70)
          .borderRadius(10)
          .backgroundColor('#fff')
          .margin({ bottom: 15 })

          Row() {
            Image($rawfile('pi.jpg'))
              .width('25%')
              .height('100%')
              .objectFit(ImageFit.Cover)
              .borderRadius(10)

            Column() {
              Text('巩固昨日背过的24个单词')
                .textAlign(TextAlign.Start)//.width('90%')
                .fontSize(14)
                .fontColor('#fff')
                .backgroundColor('#66CDAA')
                .borderRadius(5)
                .padding({
                  top: 3,
                  bottom: 3,
                  left: 5,
                  right: 5
                })


              Text('652词|时长5分01秒')
                .fontSize(10)
                .fontColor('#A9A9A9')
                .width('100%')
                .margin({ top: 2, bottom: 2 })

              Text('Physicists Find a New Way to Represent π')
                .maxLines(1)//.fontColor('#696969')
                .margin({ top: 2, bottom: 2 })
                .width('100%')
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(12)
              Text('物理学家发现一种新方法来表示圆周率')
                .maxLines(1)//.fontColor('#696969')
                .width('100%')
                .margin({ top: 2, bottom: 2 })
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(10)

            }
            .margin({ left: 10, right: 10 })
            // .width('100%')
            .layoutWeight(1)
            .alignItems(HorizontalAlign.Start)

          }
          .width('100%')
          .height(70)
          .borderRadius(10)
          .backgroundColor('#fff')
          .margin({ bottom: 15 })

          Row() {
            Image($rawfile('pizza.jpg'))
              .width('25%')
              .height('100%')
              .objectFit(ImageFit.Cover)
              .borderRadius(10)

            Column() {
              Text('覆盖当前单词书的3130个单词')
                .textAlign(TextAlign.Start)//.width('90%')
                .fontSize(14)
                .fontColor('#fff')
                .backgroundColor('#66CDAA')
                .borderRadius(5)
                .padding({
                  top: 3,
                  bottom: 3,
                  left: 5,
                  right: 5
                })


              Text('389词|时长3分49秒')
                .fontSize(10)
                .fontColor('#A9A9A9')
                .width('100%')
                .margin({ top: 2, bottom: 2 })

              Text('Why Does Pizza Taste So Good?')
                .maxLines(1)//.fontColor('#696969')
                .margin({ top: 2, bottom: 2 })
                .width('100%')
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(12)
              Text('披萨为什么如此美味？是有原因的')
                .maxLines(1)//.fontColor('#696969')
                .width('100%')
                .margin({ top: 2, bottom: 2 })
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(10)

            }
            .margin({ left: 10, right: 10 })
            // .width('100%')
            .layoutWeight(1)
            .alignItems(HorizontalAlign.Start)

          }
          .width('100%')
          .height(70)
          .borderRadius(10)
          .backgroundColor('#fff')
          .margin({ bottom: 15 })

          Row() {
            Image($rawfile('bird.png'))
              .width('25%')
              .height('100%')
              .objectFit(ImageFit.Cover)
              .borderRadius(10)

            Column() {
              Text('晨读推荐')
                .textAlign(TextAlign.Start)//.width('90%')
                .fontSize(14)
                .fontColor('#fff')
                .backgroundColor('#66CDAA')
                .borderRadius(5)
                .padding({
                  top: 3,
                  bottom: 3,
                  left: 5,
                  right: 5
                })


              Text('652词|时长4分52秒')
                .fontSize(10)
                .fontColor('#A9A9A9')
                .width('100%')
                .margin({ top: 2, bottom: 2 })

              Text('If Birds Are Dinosaurs, Why Aren\'t They Cold-Blooded?')
                .maxLines(1)//.fontColor('#696969')
                .margin({ top: 2, bottom: 2 })
                .width('100%')
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(12)
              Text('若鸟类是恐龙，为什么它们不是冷血的呢')
                .maxLines(1)//.fontColor('#696969')
                .width('100%')
                .margin({ top: 2, bottom: 2 })
                .textOverflow({ overflow: TextOverflow.Ellipsis })
                .fontSize(10)

            }
            .margin({ left: 10, right: 10 })
            // .width('100%')
            .layoutWeight(1)
            .alignItems(HorizontalAlign.Start)

          }
          .width('100%')
          .height(70)
          .borderRadius(10)
          .backgroundColor('#fff')
          .margin({ bottom: 15 })
        }
        //.justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Start)
        //.width('100%')
        .backgroundColor('#fff')
        .layoutWeight(1.5)
        .borderRadius(10)
        .margin({
          top: 10,
          left: 10,
          right: 10,
          bottom: 10
        })
        .padding({
          left: 15,
          right: 15,
          top: 15,
          bottom: 15
        })
        .linearGradient({
          angle: 135,
          colors: [[0xbbede2, 0.1], [0xFFFFFF, 0.2],]
        })
        .shadow(ShadowStyle.OUTER_DEFAULT_LG)

      }
      .width('100%')
      .height('100%')
    }
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring)
    .layoutWeight(1)
    .backgroundColor('#fff')

  }
}