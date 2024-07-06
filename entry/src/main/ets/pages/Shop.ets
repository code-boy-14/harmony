import { PageHead } from '../components/PageHead';
import { router } from '@kit.ArkUI';
import { SourceTabParamsModel } from '../models/sourceTabParamsModel';

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
      Column() {
      }
    }
    .height('100%')
    .width('100%')
  }
}