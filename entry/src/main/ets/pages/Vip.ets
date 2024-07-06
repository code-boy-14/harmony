import { PageHead } from '../components/PageHead';
import { router } from '@kit.ArkUI';
import { SourceTabParamsModel } from '../models/sourceTabParamsModel';

@Entry
@Component
struct Vip {
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
      Column(){

      }
    }
    .width('100%')
    .height('100%')

  }
}