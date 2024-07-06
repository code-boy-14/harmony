import { router } from '@kit.ArkUI'

@Component
export struct PageHead{

  @Prop title:string
  @State head:string=''
  @Builder
  headBuilder(){
    Row(){
      RelativeContainer(){
        Image($rawfile('back.png'))
          .width(50)
          .alignRules({left:{anchor:'__container__',align:HorizontalAlign.Start},
            top:{anchor:'__container__',align:VerticalAlign.Top}})
          .zIndex(1)
          .onClick(()=>{
            router.back()
          })


        Text(this.title)
          .alignRules({left:{anchor:'__container__',align:HorizontalAlign.Start},
            top:{anchor:'__container__',align:VerticalAlign.Top}})
          .width('100%')
          .height('100%')
          .fontSize(30)
          .textAlign(TextAlign.Center)
        // Row(){
        // }
        // // .alignRules({left:{anchor:'__container__',align:HorizontalAlign.Start},
        // // top:{anchor:'__container__',align:VerticalAlign.Top}})
        // .height('100%')
        // .width('100%')
      }
    }
      .backgroundColor('#eee')
      .width('100%')
      .height(50)
  }

  build() {
    this.headBuilder()
  }

}