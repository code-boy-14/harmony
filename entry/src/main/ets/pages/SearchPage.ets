import { router } from '@kit.ArkUI';
import tran from '../utils/translate'
import {TranslateModel} from '../models/translateMode'

@Entry
@Component
struct SearchPage {
  @State message: string = 'Search Page';
  // @State changeValue: string = ''
  @State submitValue: string = ''
  controller: SearchController = new SearchController()

  @State switch:boolean=true
  @State dir:string=''

  @Builder
  headBuilder() {
    Row() {
      RelativeContainer(){
        Column(){
          Image($rawfile('back.png'))
            .onClick(() => {
              router.back()
            })
        }
        .zIndex(1)
        .width(30)
        .alignRules({
          left:{anchor:'__container__',align:HorizontalAlign.Start},
          top:{anchor:'__container__',align:VerticalAlign.Top}
        })

        Row(){
          Row(){
            Text('英')
              .fontSize(this.switch?30:25)
              .fontColor(this.switch?'#46d9ae':'#000')

            Image($rawfile('switch.png'))
              .width(30)
              .onClick(()=>{
                this.switch=!this.switch
              })
              .margin({left:5,right:5})

            Text('中')
              .fontSize(this.switch?25:30)
              .fontColor(this.switch?'#000':'#46d9ae')
          }
        }
        .width('100%')
        .height('100%')
        .alignRules({
          left:{anchor:'__container__',align:HorizontalAlign.Start},
          top:{anchor:'__container__',align:VerticalAlign.Top}
        })
        .justifyContent(FlexAlign.Center)
      }
      .width('100%')
      .height('100%')

      // Search({ placeholder: 'Type to search...', controller: this.controller })
      //   .searchButton('搜索')
      //   .layoutWeight(1)
      //   .height(40)
      //   .backgroundColor('#F5F5F5')
      //   .placeholderColor(Color.Grey)
      //   .placeholderFont({ size: 14, weight: 400 })
      //   .textFont({ size: 14, weight: 400 })
      //   .onSubmit(async (value: string) => {
      //     this.submitValue = value
      //     await request.get<string,TranslateResponseModel>('')
      //   })
      //   // .onChange((value: string) => {
      //   //   this.changeValue = value
      //   // })
      //   .margin(20)
    }
    .backgroundColor('#fff')
    .width('100%')
    .height(60)
    .border({
      width: { bottom: '3px' },
      color: { bottom: '#DCDCDC' },
    })
  }

  build() {
    Column() {
      this.headBuilder()
      Column(){
        TextArea()
          .layoutWeight(1)
          .borderWidth(1)
          .borderColor('#46d9ae')
          .margin({left:15,right:15,top:15})
          .onChange((value:string)=>{
            if(this.switch){
              this.dir="en2zh"
            }else{
              this.dir="zh2en"
            }
            const payload={
              source:value,
              request_id:"demo",
              trans_type:this.dir,
              detect:true
            } as TranslateModel

            // tran.get()
          })

        TextArea()
          .layoutWeight(1)
          .borderWidth(1)
          .borderColor('#000')
          .margin(15)
      }
      .layoutWeight(1)

    }
    .width('100%')
    .height('100%')
  }
}