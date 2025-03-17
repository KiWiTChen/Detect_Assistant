import { plan } from './ItemData'
import { Defect } from './ItemData'
import router from '@ohos.router';

@Entry
@Component
export struct Speed {
  items: plan[] = [
    new plan($r('app.media.wrench'), '摄像头维护', 'FIX0683', '2025-01-26', 'W0213'),
    new plan($r('app.media.factory'), '部件返修', 'RE0024', '2025-01-18', 'W0211'),
    new plan($r('app.media.money'), '云端缴费', 'PAY0113', '2025-01-19', 'W0015'),
    new plan($r('app.media.scanner'), '零件批量检测', '#1263', '2025-01-22', 'W0129'),
    new plan($r('app.media.scanner'), '零件批量检测', '#1264', '2025-01-25', 'W0141'),
    new plan($r('app.media.scanner'), '零件批量检测', '#1265', '2025-02-10', 'W0215'),
    new plan($r('app.media.factory'), '部件返修', 'RE0025', '2025-02-11', 'W0015'),
    new plan($r('app.media.scanner'), '零件批量检测', '#1266', '2025-02-14', 'W0115'),
    new plan($r('app.media.scanner'), '零件批量检测', '#1267', '2025-02-18', 'W0219'),
    new plan($r('app.media.factory'), '部件返修', 'RE0026', '2025-02-19', 'W0018'),
  ]

  item2s: plan[] = [
    new plan($r('app.media.wrench'), '累计维护次数:', '1', '2025-03-06',""),
    new plan($r('app.media.money'), '累计缴费次数:', '1', '2025-03-06',""),
    new plan($r('app.media.factory'), '累计返修批次:', '3', '2025-03-06',""),
    new plan($r('app.media.scanner'), '累计检测批次:', '5', '2025-03-06',"展开详情"),
  ]

  defects: Defect[] = [
    new Defect($r('app.media.wrench'), '零件补丁:', ' 5853'),
    new Defect($r('app.media.wrench'), '表面划痕', '4081'),
    new Defect($r('app.media.wrench'), '零件夹杂物', '3677'),
    new Defect($r('app.media.wrench'), '表面凹凸', '2833'),
    new Defect($r('app.media.wrench'), '其它缺陷', '1998'),
  ]
  // 用来控制切换页进行切换的控制器
  tabController: TabsController = new TabsController();
  // 定义控制当前页面显示的页码
  @State currentIndex: number = 0;

  // 自定义控件函数(控件显示文本,当前的页码，已选中页面的图片，未选择页面的图片)
  @Builder tabBuilder(text: string, targetIndex: number) {
    Column() {
      Text(text)
        .fontColor(this.currentIndex == targetIndex ? '#2758a5' : '#ccc')
        .fontSize(18)
    }
    .borderWidth({ bottom: 3 })
    .borderColor(this.currentIndex == targetIndex ? '#2758a5' : Color.White)
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabController.changeIndex(this.currentIndex);
    })
  }

  build() {
    // 网办进度
    Column() {
      Text('任务一览')
        .width('100%')
        .height(60)
        .textAlign(TextAlign.Center)
        .padding({ top: 20, bottom: 20 })
        .fontColor('#fff')
        .fontWeight(600)
        .fontSize(25)
        .backgroundColor('#ff2559a5')
      Row() {
        Text('以下数据来自')
          .fontSize(20)
          .width('80%')
        Text('科技园')
          .fontSize(20)
        Image($r('app.media.arrow_forward'))
          .height(30)
          .interpolation(ImageInterpolation.High)
      }
      .width('100%')
      .border({ width: { bottom: 1 }, color: '#ffd6d4d4' })
      .padding({ top: 8, bottom: 8, left: 18, right: 18 })

      Tabs({ controller: this.tabController }) {
        TabContent() {
          //初始部分“暂无办理记录”
          // Column() {
          //   Image($r('app.media.null'))
          //     .width(270)
          //     .margin({ top: 5, bottom: 5 })
          //   Text('暂无网上业务办理记录')
          //     .fontSize(18)
          // }
          // .height('100%')

          Column() {
            Row() {
              Image($r('app.media.detecting'))
                .height(40)
              Text('零件批量检测')
                .fontSize(18)
                .margin({ left: 20 })
                .width('63%')
              Text('详情')
                .border({ width: 2, color: '#ff2559a5' })
                .padding({ top: 2, bottom: 2, left: 8, right: 8 })
                .onClick(() => {
                    router.pushUrl({
                      url: 'pages/More'
                    })
                  }
                )
            }
            .width('100%')
            .height(50)
            .backgroundColor(Color.White)
            .margin({ top: -320 })//调整横条位置，使之紧挨导航栏
            .padding({ left: 20, right: 20 })

            Row() {
              Text('批次号：')
                .fontSize(14)
                .width('30%')

              Text('#1683')
                .fontSize(14)
                .width('70%')
                .textAlign(TextAlign.End)
            }
            .width('100%')
            .height(20)
            .backgroundColor(Color.White)
            .padding({ left: 20, right: 20 })

            Row() {
              Text('测量时间：')
                .fontSize(14)
                .width('30%')
              Text('2025-03-06')
                .fontSize(14)
                .width('70%')
                .textAlign(TextAlign.End)
            }
            .width('100%')
            .height(20)
            .backgroundColor(Color.White)
            .padding({ left: 20, right: 20 })

            Row() {
              Text('执行进度：')
                .fontSize(14)
                .width('30%')


              //进度条
              Progress({
                value: 77, // 设置进度条的值为77%
                //strokeWidth: 4, // 进度条的线宽
                //trackColor: '#e0e0e0', // 进度条背景色
                //color: '#ff2559a5', // 进度条颜色
                //showInfo: true, // 显示进度数值
                //format: (percent) => `${percent}%`, // 格式化进度数值显示
              }).color( '#ff2559a5')
                .width('70%')
                .height(5)
              // Text('申领成功')
              //   .fontSize(14)
              //   .width('70%')
              //   .textAlign(TextAlign.End)
            }
            .width('100%')
            .height(20)
            .backgroundColor(Color.White)
            .padding({ left: 20, right: 20 })
          }
        }.tabBar(this.tabBuilder("进行中", 0))

        TabContent() {
          Scroll() {
            Column() {
              ForEach(this.items, (item) => {
                Column() {
                  Row() {
                    Image(item.img)
                      .height(40)
                    Text(item.text1)
                      .fontSize(18)
                      .margin({ left: 20 })
                      .width('63%')
                    Text('详情')
                      .border({ width: 2, color: '#ff2559a5' })
                      .padding({ top: 2, bottom: 2, left: 8, right: 8 })
                  }
                  .width('100%')
                  .height(50)
                  .backgroundColor(Color.White)
                  .margin({ top: 10 })
                  .padding({ left: 20, right: 20 })

                  Row() {
                    Text('任务号：')
                      .fontSize(14)
                      .width('30%')
                    Text(item.text2)
                      .fontSize(14)
                      .width('70%')
                      .textAlign(TextAlign.End)
                  }
                  .width('100%')
                  .height(20)
                  .backgroundColor(Color.White)
                  .padding({ left: 20, right: 20 })

                  Row() {
                    Text('创建时间：')
                      .fontSize(14)
                      .width('30%')
                    Text(item.text3)
                      .fontSize(14)
                      .width('70%')
                      .textAlign(TextAlign.End)
                  }
                  .width('100%')
                  .height(20)
                  .backgroundColor(Color.White)
                  .padding({ left: 20, right: 20 })

                  Row() {
                    Text('操作工号：')
                      .fontSize(14)
                      .width('30%')
                    Text(item.text4)
                      .fontSize(14)
                      .width('70%')
                      .textAlign(TextAlign.End)
                  }
                  .width('100%')
                  .height(20)
                  .backgroundColor(Color.White)
                  .padding({ left: 20, right: 20 })
                }
              })
            }
            .width('100%')
            .height('182%')
            .backgroundColor('#fff1f0f0')
          }
          .scrollBarWidth(0) //不显示滚动条
        }.tabBar(this.tabBuilder("已完成", 1))

        // TabContent() {
        //   Column() {
        //     Image($r('app.media.null'))
        //       .width(270)
        //       .margin({ top: 5, bottom: 5 })
        //     Text('暂无网上业务办理记录')
        //       .fontSize(18)
        //   }
        //   .height('100%')
        // }.tabBar(this.tabBuilder("已取消", 2))

        TabContent() {
          Scroll() {
            Column() {
              ForEach(this.item2s, (item) => {
                Column() {
                  Row() {
                    Image(item.img)
                      .height(40)
                      .margin({top : 5})
                    Text(item.text1)
                      .fontSize(18)
                      .margin({ left: 20 })
                      .width('63%')
                    Text(item.text2)
                      .fontSize(18)
                      .fontStyle(FontStyle.Italic)
                      .border({ width: { bottom: 2 }, color: '#ff2559a5' })
                      .padding({ top: 2, bottom: 2, left: 8, right: 8 })
                      .onClick(() => {
                        item.showDetails = !item.showDetails;
                      })

                    //展示排行榜
                    if (item.showDetails == true) {
                      Column() {
                        Text('零件缺陷排行')
                          .fontSize(50)
                          .margin({ top: 20, bottom: 10 })
                        // .alignSelf('center')
                      }
                    }
                  }
                  .width('100%')
                  .height(50)
                  .backgroundColor(Color.White)
                  .margin({ top: 10 })
                  .padding({ left: 20, right: 20 })

                  // Row() {
                  //   Text('业务流水号：')
                  //     .fontSize(14)
                  //     .width('30%')
                  //   Text(item.text2)
                  //     .fontSize(14)
                  //     .width('70%')
                  //     .textAlign(TextAlign.End)
                  // }
                  // .width('100%')
                  // .height(20)
                  // .backgroundColor(Color.White)
                  // .padding({ left: 20, right: 20 })

                  Row() {
                    Text('截至时间：')
                      .fontSize(16)
                      .width('50%')
                      .textAlign(TextAlign.End)
                    Text(item.text3)
                      .fontSize(16)
                      .width('50%')
                      .textAlign(TextAlign.End)
                  }
                  .width('100%')
                  .height(20)
                  .backgroundColor(Color.White)
                  .padding({ left: 20, right: 20 })

                  //最后一列
                  Row() {
                    // Text('操作工号：')
                    //   .fontSize(14)
                    //   .width('30%')
                    Text(item.text4)
                      .fontSize(14)
                      .width('100%')
                      .textAlign(TextAlign.End)
                      .onClick(() =>{
                        router.pushUrl({
                          url: 'pages/specific_rank'
                        })
                      })


                  }
                  .width('100%')
                  .height(20)
                  .backgroundColor(Color.White)
                  .padding({ left: 20, right: 20 })
                }
              })
            }
            .width('100%')
            .height('182%')
            .backgroundColor('#fff1f0f0')
          }
          .scrollBarWidth(0) //不显示滚动条
        }.tabBar(this.tabBuilder("统计", 3))
      }
      .scrollable(false)
    }
  }
}