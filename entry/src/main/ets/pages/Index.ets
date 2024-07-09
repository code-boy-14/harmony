import { borderRadiuses } from '@ohos.arkui.node'
import { SourcesComponent } from '../components/SourcesComponent'
import { WordsComponent } from '../components/WordsComponent'
import { tabsModels, TabsModels } from '../models/tabsModels'
import { MinePageComponent } from '../components/MinePageComponent'
import { DiscoveryComponent } from '../components/DiscoveryComponent'

@Entry
@Component
struct Index {
  @State currentIndex: number = 0

  @Builder
  barBuilder(title: string, index: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex == index ? selectedImg : normalImg).width(30).height(30)
      Text(title).fontSize(13).margin({ top: 3 }).fontColor(this.currentIndex == index ? '#4fdad6' : '#000')
    }

  }

  build() {

    Tabs({
      barPosition: BarPosition.End,
      index: this.currentIndex
    }) {
      ForEach(tabsModels, (item: TabsModels, index: number) => {
        TabContent() {
          if (index == 0) {
            WordsComponent()
          } else if (index == 1) {
            SourcesComponent()
          } else if (index == 2) {
            DiscoveryComponent()
            // Text('discovery page')
          } else if (index == 3) {
            MinePageComponent()
          }
        }
        .backgroundColor('#fff')
        .tabBar(this.barBuilder(item.title, index, item.activeIcon, item.icon))
        .borderColor('#eee')
        .borderWidth(1)
      })


    }
    .animationDuration(0)
    .onChange((index: number) => {
      this.currentIndex = index
    })
  }
}
