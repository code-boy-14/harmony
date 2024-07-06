import { KaoyanTabsModels, kaoyanTabsModels } from '../models/kaoyanTabsModels'

@Component
export struct kaoYanComponent{
  build() {
    Grid(){
      ForEach(kaoyanTabsModels,(item:KaoyanTabsModels,index:number)=>{
        GridItem(){
          Column(){
            Image(item.img)

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

}