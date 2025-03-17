import { CarData } from './ItemData'
import { classify } from './ItemData'
import { classify2 } from './ItemData'
import { inform } from './ItemData'
import { Speed } from './Speed'
import { Location } from './location'
import { My } from './My'

@Entry
@Component
struct Index {
  items2: classify[] = [
    new classify($r('app.media.Monitor'), '实时监控'),
    new classify($r('app.media.TASK'), '任务管理'),
    new classify($r('app.media.time_history'), '历史数据'),
    new classify($r('app.media.manage'), '设备管理')
  ]
  items3: classify2[] = [
    new classify($r('app.media.guidebook'), '维修指导'),
    new classify($r('app.media.fix'), '工具报修'),
    new classify($r('app.media.alarm'), '通知报警'),
    new classify($r('app.media.moreandmore'), '更多')
  ]
  items4: inform[] = [
    new inform($r('app.media.news01'), '中心园区检测目标设立，急招质检工人...', '2025-02-22'),
    new inform($r('app.media.news02'), '质检局新规：汽车零部件缺陷标准将收紧', '2025-02-20'),
    new inform($r('app.media.news03'), '算法再优化！表面氧化识别准确率达98.1%', '2025-02-18'),
    new inform($r('app.media.news04'), '合作案例：某车企借助系统减少损失达24万', '2025-02-17'),
    new inform($r('app.media.news05'), '行业峰会：全球汽车质检峰会最新议题公开', '2025-02-10'),
  ]
  // 用来控制切换页进行切换的控制器
  tabController: TabsController = new TabsController();
  // 定义控制当前页面显示的页码
  @State currentIndex: number = 0;

  // 自定义控件函数(控件显示文本,当前的页码，已选中页面的图片，未选择页面的图片)
  @Builder tabBuilder(text: string, targetIndex: number, selectedImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.currentIndex == targetIndex ? selectedImg : normalImg)
        .width('30')
        .interpolation(ImageInterpolation.High)
      Text(text)
        .fontColor(this.currentIndex == targetIndex ? Color.Green : Color.Black)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabController.changeIndex(this.currentIndex);
    })
  }

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabController }) {
      TabContent() {
        Scroll() {
          Column() {
            // 1.搜索行
            Row() {
              Image($r('app.media.index_search'))
                .width(25)
                .position({ x: 20, y: 7 })
                .zIndex(2)
                .interpolation(ImageInterpolation.High)
              TextInput({ placeholder: '按缺陷类别搜索' })
                .type(InputType.Normal)
                .backgroundColor(Color.White)
                .padding({ top: 0, bottom: 0, left: 60, right: 0 })
                .width(290)
                .height(40)
                .fontSize(25)
              Image($r('app.media.mail'))
                .width(40)
                .margin({ top: 0, bottom: 0, left: 40, right: 0 })
                .interpolation(ImageInterpolation.High)
            }
            .width('100%')
            // .backgroundColor('#ed106ecd')
            .padding({ top: 10, bottom: 10, left: 15, right: 15 })
            //  2.常用工具分类部分
            Row(){//整行

              //左侧部分
              Column() {

                Row() {
                  Column() {
                    Image($r('app.media.Wrench_4'))
                      .height(35)
                          }
                    Column() {
                      Row() {
                        Image($r('app.media.require')) // 图标
                          .width(15)
                          .height(20)
                          .margin({ right: 8 })     // 图标与文本的间距

                        Text("器械申请")
                          .fontSize(18)
                          .fontColor('#3966a9')
                      }
                      // 容器样式
                      .backgroundColor(Color.White)  // 背景色
                      .border({ width: 2, color: '#3966a9' }) // 边框
                      .borderRadius(25)               // 圆角
                      .padding({                     // 增大内容与边界的距离
                        left: 8,
                        right: 8,
                        top: 12,
                        bottom: 12
                      })
                      .width('auto')  // 宽度自适应内容（或固定值如 200）
                      .height('auto') // 高度自适应内容
                              }
                      }
                .width('45%')
                .backgroundColor(Color.White)
                .justifyContent(FlexAlign.SpaceEvenly)
                .height(80)
                .margin({left : 20})
                .borderRadius(8)
                .border({ width: 2, color: Color.White})

              }
              .margin({ right: 10 , bottom : 10})

              //右侧部分
              Column(){
                Row(){
                  Image($r('app.media.idcard'))
                    .height(45)
                  Text("资格证").fontSize(20).fontColor('#3966a9')
                  Image($r('app.media.arrow_forward')).height(20)
                    }.border({ width: { bottom: 1 }, color: '#80aeb5b5' })

                Row(){Text("检测资格备案").fontColor(Color.Black)}

              }.width('43%')
               .backgroundColor(Color.White)
               .justifyContent(FlexAlign.SpaceEvenly)
               .height(80)
               .borderRadius(8)
               .margin({ right: 12 , bottom : 10})
                .border({ width: 1, color: Color.White, radius: 8 })

              }
              .width("100%")
              .height(100)
              .borderRadius(8)


            Column() {
              // 事故视频块处分类部分
              Column() {
                Row() {
                  ForEach(this.items2, (item2) => {
                    Column() {
                      Image(item2.img)
                        .height(50)
                        .margin({ bottom: 10 })
                        .borderRadius(8)
                        .interpolation(ImageInterpolation.High)
                      Text(item2.text)
                        .fontColor(Color.White)
                        .width(65)
                        .height(35)
                        .textAlign(TextAlign.Center)
                        .fontColor('#ff3c2f2f')
                    }
                  })
                }
                .width('100%')
                .height('50%')
                .justifyContent(FlexAlign.SpaceBetween)

                Row() {
                  ForEach(this.items3, (item3) => {
                    Column() {
                      Image(item3.img)
                        .height(50)
                        .margin({ bottom: 10 })
                        .borderRadius(8)
                        .interpolation(ImageInterpolation.High)
                      Text(item3.text)
                        .fontColor(Color.White)
                        .width(65)
                        .height(35)
                        .textAlign(TextAlign.Center)
                        .fontColor('#ff3c2f2f')

                    }
                  })
                }
                .width('100%')
                .height('50%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('90%')
              .height(220)
              .borderRadius(10)
              .backgroundColor('#fff')
              .shadow({ radius: 20, color: '#ff736c6c' })
              .padding({ top: 10, bottom: 10, left: 10, right: 10 })
              .border({ width: 1, color: '#a3cccccc' })
              // 咨询中心部分
              Column() {
                Row() {
                  Text('资讯中心')
                    .fontWeight(700)
                    .fontSize(22)
                  Text('推送园区检测资讯')
                    .margin({ left: 25, right: 10 })
                  Image($r('app.media.next'))
                    .height(20)
                    .interpolation(ImageInterpolation.High)
                }
                .width('100%')
                .height('40')
                .padding({ bottom: 10 })
                .border({ width: { bottom: 1 }, color: '#80aeb5b5' })
                //   这里写轮播图
                Swiper() {
                  ForEach(this.items4, (item4) => {
                    Row() {
                      Image(item4.img)
                        .height(80)
                      Column() {
                        Text(item4.text)
                          .fontSize(18)
                          .fontColor('#ff4c3636')
                          .fontWeight(700)
                          .letterSpacing(2)
                          .lineHeight(25)
                        Text(item4.date)
                          .width('100%')
                          .textAlign(TextAlign.End)
                          .fontSize(15)
                          .fontColor('#ffb78585')
                          .margin({ top: 5 })
                      }
                      .width(200)
                      .height(80)
                      .margin({ left: 15 })
                    }
                  })
                }
                .width('100%')
                .height(115)
                .interval(2000)
                .autoPlay(true)
                .loop(true)
              }
              .width('90%')
              .height(160)
              .borderRadius(10)
              .backgroundColor('#fff')
              .shadow({ radius: 20, color: '#ff736c6c' })
              .padding({ top: 10, bottom: 10, left: 10, right: 10 })
              .border({ width: 1, color: '#a3cccccc' })
              .margin({ top: 10, bottom: 10 })
              //   公示公布部分
              // Column() {
              //   Row() {
              //     Text('公示公布')
              //       .fontWeight(700)
              //       .fontSize(22)
              //       .margin({ right: 195 })
              //     Image($r('app.media.next'))
              //       .height(20)
              //       .interpolation(ImageInterpolation.High)
              //   }
              //   .width('100%')
              //   .height('40')
              //   .padding({ bottom: 10 })
              //   .border({ width: { bottom: 1 }, color: '#80aeb5b5' })
              //   .margin({ bottom: 15 })
              //
              //   Row() {
              //     Image($r('app.media.information'))
              //       .width('100%')
              //       .interpolation(ImageInterpolation.High)
              //       .borderRadius(5)
              //   }
              // }
              // .width('90%')
              // .height(160)
              // .borderRadius(10)
              // .backgroundColor('#fff')
              // .shadow({ radius: 10, color: '#ff736c6c' })
              // .padding({ top: 10, bottom: 10, left: 10, right: 10 })
              // .border({ width: 1, color: '#a3cccccc' })
              // 服务中心部分
              Column() {
                Row() {
                  Text('服务中心')
                    .fontWeight(700)
                    .fontSize(22)
                  Text('寻找人工客服服务')
                    .margin({ left: 25, right: 10 })
                  Image($r('app.media.next'))
                    .height(20)
                    .interpolation(ImageInterpolation.High)
                }
                .width('100%')
                .height('40')
                .padding({ bottom: 10 })
                .border({ width: { bottom: 1 }, color: '#80aeb5b5' })
                .margin({ bottom: 15 })

                Row() {
                  Image($r('app.media.server'))
                    .width('100%')
                    .interpolation(ImageInterpolation.High)
                    .borderRadius(4)
                    .height(70)
                }
              }
              .width('90%')
              .height(145)
              .borderRadius(10)
              .backgroundColor('#fff')
              .shadow({ radius: 10, color: '#ff736c6c' })
              .padding({ top: 10, bottom: 10, left: 10, right: 10 })
              .border({ width: 1, color: '#a3cccccc' })
              .margin({ top: 10 })
            }
            // .height('135%')

            .height('100%')
            // .scrollBarWidth(0) //不显示滚动条
          }
          .width('100%')
          .height('133%')
          .linearGradient({
            angle: 0, //线性渐变的起始角度
            colors: [['#ccc', 0.1], ['#fff', 0.4], ['#3966a9', 0.8]] //指定某百分比位置处的渐变色颜色
          })
        }
        .scrollBarWidth(0) //不显示滚动条
      }
      .tabBar(this.tabBuilder("首页", 0, $r('app.media.index_2'), $r('app.media.index_1')))

      TabContent() {
        Speed()
      }.tabBar(this.tabBuilder("实时任务", 1, $r('app.media.speed_2'), $r('app.media.speed_1')))

      TabContent() {
        Location()
      }.tabBar(this.tabBuilder("报告日志", 2, $r('app.media.location_2'), $r('app.media.location_1')))

      TabContent() {
        My()
      }.tabBar(this.tabBuilder("我的", 3, $r('app.media.my_2'), $r('app.media.my_1')))
    }
    .scrollable(false)
  }
}