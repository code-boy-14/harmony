import { router } from '@kit.ArkUI'

@Component
export struct PageHead {
  @Prop title: string
  @State head: string = ''

  @Builder
  headBuilder() {
    Row() {
      RelativeContainer() {
        Image($rawfile('back.png'))
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


        Text(this.title)
          .alignRules({
            left: { anchor: '__container__', align: HorizontalAlign.Start },
            top: { anchor: '__container__', align: VerticalAlign.Top }
          })
          .width('100%')
          .height('100%')
          .fontSize(25)
          .fontColor('#8a8a8a')
          .textAlign(TextAlign.Center)
        // Row(){
        // }
        // // .alignRules({left:{anchor:'__container__',align:HorizontalAlign.Start},
        // // top:{anchor:'__container__',align:VerticalAlign.Top}})
        // .height('100%')
        // .width('100%')
      }
    }
    .backgroundColor('#fff')
    .width('100%')
    .height(60)

  }

  build() {
    this.headBuilder()
  }
}