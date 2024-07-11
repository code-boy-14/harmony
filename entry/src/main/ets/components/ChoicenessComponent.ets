import { ChoicenessModels, choicenessModels } from '../models/choicenessModels'

@Component
export struct ChoicenessComponent {
  build() {
    List(){
      // ForEach()
      ForEach(choicenessModels,(item:ChoicenessModels,index:number)=>{
        ListItem(){
          Row(){
            Column(){
              Image(item.img)
                .width(100)
                .height(70)
                .borderRadius(7)
            }
            Column(){
              Text(item.title).width('100%')
            }
            .padding(10)
            .layoutWeight(1)
          }
          .alignItems(VerticalAlign.Top)
        }
        .padding(10)
      })
    }
    //蒙出来的功能，哈哈哈
    .nestedScroll({scrollForward:NestedScrollMode.PARENT_FIRST,scrollBackward:NestedScrollMode.SELF_FIRST})
    .scrollBar(BarState.Off)
    .divider({strokeWidth:10})
    .width('100%')
    .layoutWeight(1)
  }


}