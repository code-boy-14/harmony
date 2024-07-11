import { ChoicenessModels } from '../models/choicenessModels'
import { KaoyanTabsModels } from '../models/kaoyanTabsModels'
import { ReqChoicenessModel } from '../models/requestModel'
import request from '../utils/request'

@Component
export struct ChoicenessComponent {
  @State choicenessData:ChoicenessModels[]=[] as ChoicenessModels[]

  build() {
    List(){
      // ForEach()
      ForEach(this.choicenessData,(item:ChoicenessModels,index:number)=>{
        ListItem(){
          Row(){
            Column(){
              Image($rawfile(item.img))
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

  async  aboutToAppear() {
    const result = await request.get<string,ReqChoicenessModel>('/jingxuan')
    this.choicenessData=result.data
    // console.log(JSON.stringify(result))
    // console.log(JSON.stringify(this.choicenessData))
  }


}