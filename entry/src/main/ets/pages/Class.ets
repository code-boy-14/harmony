import { PageHead } from '../components/PageHead';
import { router } from '@kit.ArkUI';
import { SourceTabParamsModel } from '../models/sourceTabParamsModel';
import { ClassComponents } from '../components/ClassComponents';

@Entry
@Component
struct Class {
  @State title: string = ''

  onPageShow(): void {
    // 先接参数
    const params = router.getParams() as SourceTabParamsModel
    //再从中提取title
    this.title = params.title
    // .title前的括号必须有
    // this.title=(router.getParams() as SourceTabParamsModel).title
  }

  build() {
    Column() {
      PageHead({ title: this.title})
      Scroll(){
        Column(){
          ClassComponents()
        }
      }
      .scrollBar(BarState.Off)
      .edgeEffect(EdgeEffect.Spring)
      .layoutWeight(1)
      .backgroundColor('#fff')

    }
    .width('100%')
    .height('100%')

  }
}