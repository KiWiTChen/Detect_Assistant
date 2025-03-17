import router from '@ohos.router';

@Entry
@Component
struct More {
  @State message: string = 'Hello World'

  build() {


    Column() {

      //界面栏
      Image($r('app.media.pre'))
        .width(30)
        .position({ x: 5, y: 14 })
        .zIndex(2)
        .onClick(() => {
          router.back()
        })
      Text('任务详情')
        .width('100%')
        .height(60)
        .backgroundColor('#3362a6')
        .textAlign(TextAlign.Center)
        .fontColor(Color.White)
        .fontSize(30)
        .fontWeight(700)

      Row(){
        Text('Manipulator Detector V2.1').textAlign(TextAlign.Center)
          .fontColor(Color.Gray)
          .fontSize(18)
          .margin({top : 20 , bottom : 20})
      }

      Row(){
        Column(){
          Image($r("app.media.rotate_left")).height(40)
        }.margin({top : 50})

        Column(){
          Image($r('app.media.arm')).height(200)
        }

        Column(){
          Image($r("app.media.rotate_right")).height(40)
        }.margin({top : -50})

      }.margin({bottom : 20})

      //状态栏
      Row(){
        //1列
        Column(){
          Row(){
            Row(){
              Image($r('app.media.record')).height(28).margin({left:2})
              Text('实时录像').fontSize(18).margin({left:8})
              Image($r('app.media.arrow_forward')).height(20).margin({left:20})
            }.margin({top:-25})

            Row(){
              Text('点击查看实时画面').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
            }.margin({left:-140,top:15})

            Row(){
              Text('当前状态：录制中').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
              Image($r('app.media.dot')).height(26)
            }.margin({top:45,left:-140})
          }
          .width('45%')
          .height(80)
          .border({width : 1 ,color: '#a3e5e3e3' })
          .margin({left : 10,right :2,bottom : 4})
          .shadow({ radius: 6, color: '#ff736c6c' })

          Row(){
            Row(){
              Image($r('app.media.alert')).height(25).margin({left:2})
              Text('状态警报').fontSize(18).margin({left:8})
            }.margin({top:-25})

            Row(){
              Text('设备故障预警').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
            }.margin({left:-100,top:18})

            Row(){
              Text('当前状态：暂无报警').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
              Image($r('app.media.dot')).height(26)
            }.margin({top:48,left:-100})
          }
          .width('45%')
          .height(80)
          .border({width : 1 ,color: '#a3e5e3e3' })
          .margin({left : 10,right :2,bottom : 4})
          .shadow({ radius: 6, color: '#ff736c6c' })
        }.margin({bottom : 10})
        .height(170)


        //2
        Column(){
          Row(){
            Row(){
              Image($r('app.media.upload')).height(25).margin({left:2})
              Text('图像上传').fontSize(18).margin({left:8})
              Image($r('app.media.arrow_forward')).height(20).margin({left:20})
            }.margin({top:-25})

            Row(){
              Text('支持新增待测图像').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
            }.margin({left:-140,top:18})

            Row(){
              Text('历史新增：4张').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
              Image($r('app.media.dot')).height(26)
            }.margin({top:48,left:-140})
          }
          .width('45%')
          .height(80)
          .border({width : 1 ,color: '#a3e5e3e3' })
          .margin({left : 2,right :10,bottom : 4})
          .shadow({ radius: 6, color: '#ff736c6c' })

          Row(){
            Row(){
              Image($r('app.media.layer')).height(25).margin({left:2})
              Text('设备监测').fontSize(18).margin({left:8})
              Image($r('app.media.arrow_forward')).height(20).margin({left:20})
            }.margin({top:-25})

            Row(){
              Text('电量：82%').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
            }.margin({left:-140,top:18})

            Row(){
              Text('最新维护:2025.1.26').fontSize(14).fontColor(Color.Gray).textAlign(TextAlign.Start)
              Image($r('app.media.dot')).height(26)
            }.margin({top:48,left:-140})
          }
          .width('45%')
          .height(80)
          .border({width : 1 ,color: '#a3e5e3e3' })
          .margin({left : 2,right :10,bottom : 4})
          .shadow({ radius: 6, color: '#ff736c6c' })
        }.margin({bottom : 10})
        .height(170)
      }

      //园区地图
      // Row(){
      //   Text('检测地点').fontSize(18).textAlign(TextAlign.Center)
      // }
      Row(){
        Image($r('app.media.yuanqu')).height(240).width("90%")
      }.margin({top:10})

      //     // 1.已通过
      //     this.StatsBuilder({label: '已通过', value: 12})
      //     // 2.还可以吃
      //     Stack(){
      //       // 2.1.进度条
      //       Progress({
      //         value: 1278,
      //         total: 2000,
      //         type: ProgressType.Ring
      //       })
      //         .width(120)
      //         //.style({strokeWidth: CommonConstants.DEFAULT_10})
      //         .color("#02BD79")
      //       // 2.2.统计数据
      //       this.StatsBuilder({label: '今日已测', value: 1278,tips: `待测：722`})
      //     }
      //     // 3.运动消耗
      //     this.StatsBuilder({label: '未通过', value: 1266})
      //   }
      //   .width('100%')
      //   .justifyContent(FlexAlign.SpaceEvenly)
      //   .padding({top: 30, bottom: 35})
      // }

      // @Builder StatsBuilder($$:{label: string, value: number, tips?: string}){
      //   Column(){
      //     Text($$.label)
      //       .fontColor("#676c7f")
      //       .fontWeight(10)
      //     Text($$.value.toFixed(0))
      //       .fontSize(20)
      //       .fontWeight(15)
      //     if($$.tips){
      //       Text($$.tips)
      //         .fontSize(12)
      //         .fontColor("#b5b5b7")
      //     }
      //   }
      // }
    }
  }
}