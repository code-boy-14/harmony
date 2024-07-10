import { borderRadiuses } from '@ohos.arkui.node'
import { router } from '@kit.ArkUI'

@Preview
@Component
export struct WordsComponent{
  build() {
    //单词页面
    Column() {

      Row() {
        TextInput({placeholder:'搜索'})
          .backgroundColor('#eee')
          .layoutWeight(1)
          .height(35)
          .padding({ left: 10 })
          .margin({left:10,right:10})
          .borderRadius(8)
          .onClick(()=>{
            router.pushUrl({
              url:'pages/SearchPage'
            })
          })


        // Text('搜索框')
        //   .backgroundColor('#eee')
        //   .layoutWeight(1)
        //   .height(35)
        //   .padding({ left: 10 })
        //   .margin({left:10,right:10})
        //   .borderRadius(8)

        Image($rawfile('info.png'))
          .width(30)

      }
      .height(50)
      .backgroundColor('#fff')
      .justifyContent(FlexAlign.SpaceBetween)

      Scroll() {
        Column({ space: 10 }) {
          Column({ space: 20 }) {
            Column({ space: 5 }) {
              Column({ space: 5 }) {
                Text('考研形近易混词汇')
                  .fontSize(30)
                  .textAlign(TextAlign.Start)

                Column() {
                  Row() {
                    Text('569词/1806词>')
                      .fontColor('#50d4ae')
                    Button('学习设置')
                      .fontColor('#fff')
                      .backgroundColor('#50d4ae')
                  }
                  .width('100%')
                  .height(20)
                  .justifyContent(FlexAlign.SpaceBetween)

                  Progress({value:20,total:100,type:ProgressType.Linear})
                    .width('100%')
                    .color('#50d4ae')
                    .margin({top:10})

                  // Text('-------------(进度条)------------------')
                  //   .width('100%')
                  //   .maxLines(1)
                  //   .fontColor('#50d4ae')
                  //   .textOverflow({ overflow: TextOverflow.Clip })

                }

              }
              .width('100%')
              .alignItems(HorizontalAlign.Start)
              .layoutWeight(1)

              Column() {
                Column({ space: 5 }) {
                  Text('·今日任务')
                    .fontColor('#fff')
                    .alignSelf(ItemAlign.Start)
                    .fontSize(19)
                  Row() {
                    Column() {
                      Text('新词')
                        .fontSize(16)
                      Text('50')
                        .fontSize(25)
                    }

                    Column() {
                      Text('复习')
                        .fontSize(16)
                      Text('150')
                        .fontSize(25)
                    }

                    Column() {
                      Text('未学')
                        .fontSize(16)
                      Text('200')
                        .fontSize(25)
                    }
                  }
                  .width('100%')
                  .justifyContent(FlexAlign.SpaceAround)

                  Button('开始学习')
                    .fontColor('#02523c')
                    .backgroundColor('#fff')
                    .width('60%')
                }
                .width('100%')
                .height('100%')
                .justifyContent(FlexAlign.SpaceEvenly)

              }
              .width('100%')
              .padding({ left: 10, right: 10 })
              .backgroundColor('#34dca9')
              .layoutWeight(3)
              .justifyContent(FlexAlign.SpaceBetween)
              .borderRadius(borderRadiuses(10))
            }
            .padding({
              left: 10,
              right: 10,
              top: 10,
              bottom: 10
            })
            .layoutWeight(5)
            .width('100%')
            .backgroundColor('#f0f0f0')
            .borderWidth(1)
            .borderColor('#fff')
            .borderRadius(borderRadiuses(10))
            .shadow(ShadowStyle.OUTER_DEFAULT_LG)

            Row() {
              Image($rawfile('mate.png'))
                .width(40)
              Column() {
                Text('同桌·找个研友一起坚持')
                  .maxLines(1)
                  .width('100%')
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                  .fontSize(13)

                Text('1.5w人正在找研友')
                  .fontSize(10)
                  .fontColor('#d7d7d7')
                  .width('100%')
              }
              .margin({ left: 10, right: 10 })
              // .width('100%')
              .layoutWeight(1)

              Button('找个同桌')
                .width(100)
                .fontColor('#fff')
                .backgroundColor('#34dca9')
            }
            .width('100%')
            .padding({
              left: 10,
              right: 10,
              top: 10,
              bottom: 10
            })
            .backgroundColor('#fff')
            .layoutWeight(1)
            .justifyContent(FlexAlign.SpaceEvenly)
            .borderRadius(10)
            .shadow(ShadowStyle.OUTER_DEFAULT_LG)

            Column() {

              Text('考研工具')
                .alignSelf(ItemAlign.Start)
              Row() {
                Image($rawfile('paper.png'))
                  .width(60)

                Column() {
                  Text('考研真题宝')
                    .maxLines(1)
                    .width('100%')
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                    .fontSize(13)

                  Text('纸质真题-好搭档')
                    .fontSize(10)
                    .fontColor('#d7d7d7')
                    .width('100%')
                }
                .margin({ left: 10, right: 10 })
                // .width('100%')
                .layoutWeight(1)
                .layoutWeight(1)

                Button('查看')
                  .width(100)
                  .fontColor('#fff')
                  .backgroundColor('#15cfcf')

              }
              .width('100%')
              .height(70)
              .borderRadius(10)
              .backgroundColor('#e1faf4')
            }
            .width('100%')
            .backgroundColor('#fff')
            .layoutWeight(1.5)
            .borderRadius(10)
            .padding({
              left: 10,
              right: 10,
              top: 10,
              bottom: 10
            })
            .shadow(ShadowStyle.OUTER_DEFAULT_LG)
          }
          .padding(
            {
              left: 15,
              right: 15
            }
          )
          .width('100%')
          .layoutWeight(1)

        }
        .width('100%')
        .margin({top:20})
        .layoutWeight(1)

      }
      .edgeEffect(EdgeEffect.Spring)
      .scrollBar(BarState.Off)
      // .backgroundColor('#eee')
      .layoutWeight(1)
    }
  }
}

