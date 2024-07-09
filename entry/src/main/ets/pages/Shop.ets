import { PageHead } from '../components/PageHead';
import { router } from '@kit.ArkUI';
import { SourceTabParamsModel } from '../models/sourceTabParamsModel';
import { ShopComponents } from '../components/ShopComponents';

@Entry
@Component
struct Shop {
  @State title: string = ''
  @State currentIndex:number=0

  onPageShow(): void {
    const params = router.getParams() as SourceTabParamsModel
    this.title=params.title
  }

  build() {
    Column(){
      PageHead({title:this.title})
      Scroll() {
        Column() {
          Row() {
            Image($rawfile('personal.png'))
              .layoutWeight(1)
              .borderRadius(40)

            Column() {
              Text('我的贝壳')
                .width('100%')
                .fontSize(12)
                .margin({ bottom: 10 })
                .textAlign(TextAlign.Start)

              Text('0')
                .width('100%')
                .fontSize(30)
                .fontWeight(700)
                .margin({ left: 30 })
                .textAlign(TextAlign.Start)
            }
            .layoutWeight(3)
            .padding(15)
          }
          .backgroundColor('#e5f7f9')
          .width('100%')
          .padding(15)
          .justifyContent(FlexAlign.Start)

          ShopComponents()
        }
      }
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .layoutWeight(1)
      .backgroundColor('#fff')
    }
    .height('100%')
    .width('100%')
  }
}