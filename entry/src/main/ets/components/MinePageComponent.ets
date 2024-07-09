@Component
export struct MinePageComponent {

  build() {
    Column(){
      Column() { //每日一句
        // Row() {
        //   Text('每日一句')
        //     .fontSize(14)
        //     .backgroundBlurStyle(BlurStyle.Thin,
        //       { colorMode: ThemeColorMode.LIGHT, adaptiveColor: AdaptiveColor.DEFAULT, scale: 1.0 })
        //     .borderRadius(8)
        //     .fontWeight(FontWeight.Bold)
        //     .fontColor('#fff')
        //     .opacity(1)
        //     .padding({
        //       top: 4,
        //       left: 5,
        //       right: 5,
        //       bottom: 4
        //     })//.opacity(0.5)
        //     .margin({ left: 10 })
        //   Text('jul.08')
        //     .margin({ right: 10 })
        //     .fontColor('#fff')
        //
        // }
        // .width('100%')
        // .justifyContent(FlexAlign.SpaceBetween)
        // .alignSelf(ItemAlign.Start)


        // Row() {
        //   Text('5 Very Uncomfortable Truths You Should Know about Life')
        //     .fontColor('#fff')
        // }
        // .width('100%')
        // .justifyContent(FlexAlign.SpaceAround)

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
      .width('95%')
      .backgroundColor('#fff')
      .borderRadius(10)
      .layoutWeight(2)
      .shadow(ShadowStyle.OUTER_DEFAULT_LG)

      Column(){
        Row(){
          Text("我的账户")
            .fontSize(20)
            .fontWeight('bold')
            .margin({ bottom:10 ,left:15,top:15})
        }
        .width('100%')
        Row(){
          Column(){
            Row(){
              Image($r("app.media.youhui"))
                .width('40')
            }
            Row(){
              Text("优惠券")
                .margin({top:10})
            }
          }
          Column(){
            Row(){
              Image($r("app.media.beke2"))
                .width('40')
            }
            Row(){
              Text("贝壳")
                .margin({top:10})
            }

          }
          Column(){
            Row(){
              Image($r("app.media.book"))
                .width('40')
            }
            Row(){
              Text("我的课程")
                .margin({top:10})
            }

          }
          Column(){
            Row(){
              Image($r("app.media.ding"))
                .width('40')
            }
            Row(){
              Text("订单")
                .margin({top:10})
            }

          }
        }
        .margin({top:5,left:20,right:20})
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)
      }
      .backgroundColor('#fff')
      .width('95%')
      .margin('10pv')
      .borderRadius(10)
      .layoutWeight(3.5)
      .linearGradient({
        angle: 135,
        colors: [[0xbbede2, 0.1], [0xFFFFFF, 0.2],]
      })
      .shadow(ShadowStyle.OUTER_FLOATING_SM)

      Column(){
        Row(){
          Text("我的学习")
            .fontSize(20)
            .fontWeight('bold')
            .margin({ left:15,top:15})
        }
        .width('100%')
        Row() {
          Column() {
            Row() {
              Image($r("app.media.wordbook"))
                .width('50')
            }

            Row() {
              Text("单词本")
                .margin({ top: 5 })
            }
          }

          Column() {
            Row() {
              Image($r("app.media.unknown"))
                .width('50')
            }

            Row() {
              Text("生词本")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.wordtip"))
                .width('50')
            }

            Row() {
              Text("单词笔记")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.wrongword"))
                .width('50')
            }

            Row() {
              Text("错题本")
                .margin({ top: 5 })
            }

          }
        }
        .margin({top:5,left:20,right:20})
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

        Row() {
          Column() {
            Row() {
              Image($r("app.media.setting"))
                .width('50')
            }

            Row() {
              Text("学习设置")
                .margin({ top: 5 })
            }
          }

          Column() {
            Row() {
              Image($r("app.media.learndata"))
                .width('50')
            }

            Row() {
              Text("学习数据")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.learndoc"))
                .width('50')
            }

            Row() {
              Text("学习档案")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.morework"))
                .width('50')
            }

            Row() {
              Text("拓展服务")
                .margin({ top: 5 })
            }

          }
        }
        .margin({top:20,left:20,right:20})
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }
      .backgroundColor('#fff')
      .width('95%')
      .margin('10pv')
      .borderRadius(10)
      .layoutWeight(5.5)
      .linearGradient({
        angle: 135,
        colors: [[0xfe7735, 0.1], [0xFFFFFF, 0.2],]
      })
      .shadow(ShadowStyle.OUTER_FLOATING_SM)

      Column(){
        Row(){
          Text("更多")
            .fontSize(20)
            .fontWeight('bold')
            .margin({ left:15,top:20})
        }
        .width('100%')
        Row() {
          Column() {
            Row() {
              Image($r("app.media.service"))
                .width('50')
            }

            Row() {
              Text("客服")
                .margin({ top: 5 })
            }
          }

          Column() {
            Row() {
              Image($r("app.media.card"))
                .width('50')
            }

            Row() {
              Text("我的证书")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.square"))
                .width('50')
            }

            Row() {
              Text("活动广场")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.safeguard"))
                .width('50')
            }

            Row() {
              Text("安全隐私")
                .margin({ top: 5 })
            }

          }
        }
        .margin({top:5,left:20,right:20})
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

        Row() {
          Column() {
            Row() {
              Image($r("app.media.share"))
                .width('50')
            }

            Row() {
              Text("分享")
                .margin({ top: 5 })
            }
          }

          Column() {
            Row() {
              Image($r("app.media.coopperate"))
                .width('50')
            }

            Row() {
              Text("商务合作")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.message"))
                .width('50')
            }

            Row() {
              Text("我的私信")
                .margin({ top: 5 })
            }

          }

          Column() {
            Row() {
              Image($r("app.media.attention"))
                .width('50')
            }

            Row() {
              Text("注意事项")
                .margin({ top: 5 })
            }

          }
        }
        .margin({top:20,left:20,right:20})
        .width('100%')
        .justifyContent(FlexAlign.SpaceAround)

      }
      .backgroundColor('#fff')
      .width('95%')
      .margin('10pv')
      .borderRadius(10)
      .layoutWeight(5.5)
      .linearGradient({
        angle: 135,
        colors: [[0xfebfba, 0.1], [0xFFFFFF, 0.2],]
      })
      .shadow(ShadowStyle.OUTER_FLOATING_SM)
    }
    .backgroundColor('#eee')
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.SpaceEvenly)

  }
}