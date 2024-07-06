import { SourcesTabsModels, sourcesTabsModels } from '../models/sourcesTabsModels'
import { wordsTestModel, WordsTestModel } from '../models/wordsTestsModel'
import { ChoicenessComponent } from './ChoicenessComponent'
import { kaoYanComponent } from './KaoYanComponent'
import { Router, router } from '@kit.ArkUI'

@Extend(Row)
function rowBoxStyle() {
  // .margin({
  //   top: 10,
  //   left: 10,
  //   right: 10,
  //   bottom: 10
  // })
  .padding({
    top: 10,
    left: 10,
    right: 10,
    bottom: 10
  })
  .backgroundColor('#fff')
  .borderRadius(10)
  .shadow(ShadowStyle.OUTER_DEFAULT_LG)
}

@Extend(Column)
function columnBoxStyle() {
  .margin({
    top: 10,
    left: 10,
    right: 10,
    // bottom: 10
  })
  .padding({
    top: 10,
    left: 10,
    right: 10,
    bottom: 10
  })
  .backgroundColor('#fff')
  .borderRadius(10)
  .shadow(ShadowStyle.OUTER_DEFAULT_XS)
}


@Preview
@Component
export struct SourcesComponent {
  @Builder
  sourcesBarBuilder(index: number, title: string) {
    Column() {
      Text(title)
        .fontColor(this.currentIndex == index ? '#4fdad6' : '#000')
        .fontWeight(this.currentIndex == index ? 900 : 400)
    }
    // .borderWidth(1)
    .margin({ left: 10, right: 20 })
    // .width(70)
    .height(30)

  }

  @State currentIndex: number = 0


  build() {
    Scroll() {

      Column() {
        Column() {
          Column() { //单词测试
            Text('单词测试')
              .alignSelf(ItemAlign.Start)
            Row() {
              ForEach(wordsTestModel, (item: WordsTestModel) => {
                Column() {
                  Image(item.img)
                    .width(30)
                  Text(item.title)

                }
              })
            }
            .width('100%')
            // .margin({top:5})
            .justifyContent(FlexAlign.SpaceAround)

          }
          // .width('100%')
          .height(100)
          .justifyContent(FlexAlign.SpaceAround)
          .margin({
            top: 10,
            left: 10,
            right: 10,
            bottom: 10
          })
          .padding({
            top: 10,
            left: 10,
            right: 10,
            bottom: 10
          })
          .backgroundColor('#fff')
          .borderRadius(10)
          .shadow(ShadowStyle.OUTER_DEFAULT_LG)

          Row() {
            Row() { //单词随身听
              Image($rawfile('walkman.png'))
                .width(30)

              Text('单词随身听')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
            }
            .height('100%')
            .backgroundColor('#fff')
            .layoutWeight(1)
            .margin({ left: 10, right: 10 })
            .rowBoxStyle()

            Row() { //短语学习
              Image($rawfile('phrase.png'))
                .width(30)

              Text('短语学习')
                .layoutWeight(1)
                .textAlign(TextAlign.Center)
            }
            .height('100%')
            .backgroundColor('#fff')
            .layoutWeight(1)
            .margin({ right: 10 })
            .rowBoxStyle()

          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceEvenly)
          .height(100)
          .padding({ top: 10, bottom: 10 })

        }
        .width('100%')
        .height(220)

        Tabs() {
          ForEach(sourcesTabsModels, (item: SourcesTabsModels, index: number) => {
            TabContent() {
              if (this.currentIndex == 0) {
                ChoicenessComponent()
              } else if (this.currentIndex == 1) {
                kaoYanComponent()
              } else {
                Text(index.toString())
              }
            }
            .tabBar(this.sourcesBarBuilder(index, item.title))
            .borderWidth(1)
            .borderColor('#eee')
          })
        }
        .width('100%')
        .backgroundColor('#fff')
        .onTabBarClick((index:number)=>{
          switch (index) {
            case 3:
              router.pushUrl({ url: 'pages/Shop', params: { title: '贝壳商城', currentIndex: this.currentIndex } })
              break
            case 2:
              router.pushUrl({ url: 'pages/Vip', params: { title: '单词会员', currentIndex: this.currentIndex } })
              break
            default:
              this.currentIndex = index
          }
        })
        // .onChange((index: number) => {
        //   const temp=this.currentIndex
        //   switch (index){
        //     case 3:
        //       router.pushUrl({url:'pages/Shop',params:{title:'贝壳商城',currentIndex:this.currentIndex}})
        //       this.currentIndex=index
        //       this.currentIndex=temp
        //       break
        //     case 2:
        //       router.pushUrl({url:'pages/Vip',params:{title:'单词会员',currentIndex:this.currentIndex}})
        //       this.currentIndex=index
        //       this.currentIndex=temp
        //       break
        //     default:
        //       this.currentIndex=index
        //   }
        //
        // })
        .barMode(BarMode.Scrollable)

      }
      .width('100%')
    }
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring)
    .layoutWeight(1)
    .backgroundColor('#fff')

  }
}