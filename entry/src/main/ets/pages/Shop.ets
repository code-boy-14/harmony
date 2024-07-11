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
          ShopComponents()

    }
    .height('100%')
    .width('100%')
  }
}