import { commodityModel } from '../models/commodityModel'
import { ReqCommodityModel } from '../models/requestModel'
import request from '../utils/request'
import { router } from '@kit.ArkUI'
import { PullToRefresh, PullToRefreshConfigurator } from '@ohos/pulltorefresh'


@Component
export struct ShopComponents {
  @State
  commodityData: commodityModel[] = []
  private scroller: Scroller = new Scroller()
  // 每页显示的条数
  private itemsPerPage: number = 5
  // 初始数据
  @State data: commodityModel[] = this.commodityData
  // 当前页，初始值第一页
  private currentPage: number = 1
  // 计算共有多少页
  private totalPage: number = Math.ceil(this.commodityData.length / this.itemsPerPage)
  // 第一步：实例化 PullToRefreshConfigurator
  private refreshConfigurator: PullToRefreshConfigurator = new PullToRefreshConfigurator()

  build() {
    Column() {
      PullToRefresh({
        data: $data,
        scroller: this.scroller,
        // 第二步：注册 refreshConfigurator
        refreshConfigurator: this.refreshConfigurator,
        customList: () => {
          this.listBuilder()
        },
        onRefresh: () => {
          return new Promise<string>((resolve) => {
            setTimeout(() => {
              resolve('刷新成功')
              this.data = this.commodityData.slice(0, this.itemsPerPage)
              // 页码复位
              this.currentPage = 1
              // 重新启动上拉加载
              this.refreshConfigurator.setHasLoadMore(true)
            }, 2000)
          })
        },
        onLoadMore: () => {
          return new Promise((resolve) => {
            setTimeout(() => {
              resolve('')
              if (this.currentPage < this.totalPage) {
                this.data = [
                  ...this.data,
                  ...this.commodityData.slice(this.itemsPerPage * this.currentPage,
                    this.itemsPerPage * this.currentPage + this.itemsPerPage)
                ]
                this.currentPage++
              } else {
                console.log('到底了~')
                // 第三步：设置不能继续上拉
                this.refreshConfigurator.setHasLoadMore(false)
              }
            }, 2000)
          })
        },
        customLoad: null,
        customRefresh: null
      })
    }
  }

  @Builder
  listBuilder() {
    List({ scroller: this.scroller }) {
      /*
       * 我的贝壳
       */
      ListItem() {
        Column() {
          Row() {
            Image($rawfile('personal.png'))
              .layoutWeight(1)
              .borderRadius(40)

            Column() {
              Text('我的贝壳')
                .width('100%')
                .fontSize(16)
                .margin({ bottom: 10 })
                .textAlign(TextAlign.Start)

              Text('0')
                .width('100%')
                .fontSize(30)
                .fontWeight(700)
                .margin({ left: 30 })
                .textAlign(TextAlign.Start)
            }
            .layoutWeight(3)
            .padding(15)
          }
          .backgroundColor('#e5f7f9')
          .width('100%')
          .padding(15)
          .justifyContent(FlexAlign.Start)
        }
      }

      /*
       * 商品列表
       */
      ForEach(this.commodityData, (item: commodityModel) => {
        ListItem() {
          Row() {
            Image($rawfile(item.img))
              .padding(10)
              .layoutWeight(1)
              .borderRadius(8)

            Column() {
              Text(item.name)
                .width('100%')
                .fontSize(18)
                .maxLines(2)
                .margin({ bottom: 10 })
                .textAlign(TextAlign.Start)

              Text(item.price + '贝壳')
                .width('100%')
                .fontSize(20)
                .fontWeight(600)
                .fontColor('#15c5a1')
                .textAlign(TextAlign.Start)
            }
            .layoutWeight(1)
            .padding(10)
          }
          .width('100%')
          .height('18%')
          .padding(5)
          .border({
            width: { bottom: '3px' },
            color: { bottom: '#DCDCDC' },
          })
          .onClick(() => {
            router.pushUrl({
              url: 'pages/Commodity',
              params: {
                id: item.id
              }
            })
          })
        }
      })
    }
    .divider({strokeWidth: 1, color: '#eee' })
    .backgroundColor('#fff')
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.None)
    .width('100%')
    .height('100%')
  }

  async aboutToAppear() {
    let result = await request.get<string, ReqCommodityModel>('/commodity')
    this.commodityData = result.data
  }
}