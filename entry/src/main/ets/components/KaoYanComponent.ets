import { KaoyanTabsModels } from '../models/kaoyanTabsModels'
import { ReqKaoyanModel } from '../models/requestModel'
import request from '../utils/request'
@Component
export struct kaoYanComponent{
  @State kaoyanData:KaoyanTabsModels[]=[] as KaoyanTabsModels[]
  build() {
    Grid(){
      ForEach(this.kaoyanData,(item:KaoyanTabsModels,index:number)=>{
        GridItem(){
          Column(){
            Image($rawfile(item.img))

            Text(item.title)
              .width('100%')
              .textAlign(TextAlign.Start)
              .textOverflow({overflow:TextOverflow.Ellipsis})
              .maxLines(2)

            Text(item.price)
              .alignSelf(ItemAlign.End)
              .width('100%')
              .textAlign(TextAlign.Start)
              .fontColor('#4fdad6')
          }
        }
      })
    }
    .padding(10)
    .nestedScroll({scrollForward:NestedScrollMode.PARENT_FIRST,scrollBackward:NestedScrollMode.SELF_FIRST})
    .scrollBar(BarState.Off)
    .columnsGap(10)
    .rowsGap(15)
    .columnsTemplate('1fr 1fr')
  }

  async  aboutToAppear() {
    const result = await request.get<string,ReqKaoyanModel>('/kaoyan')
    this.kaoyanData=result.data
  }

}