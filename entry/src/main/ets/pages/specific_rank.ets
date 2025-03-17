import router from '@ohos.router';
import { Defect } from './ItemData';


@Entry
@Component
struct Specific_rank {

  defects: Defect[] = [
    new Defect($r('app.media.wrench'), '零件补丁:', ' 5853'),
    new Defect($r('app.media.wrench'), '表面划痕', '4081'),
    new Defect($r('app.media.wrench'), '零件夹杂物', '3677'),
    new Defect($r('app.media.wrench'), '表面凹凸', '2833'),
    new Defect($r('app.media.wrench'), '其它缺陷', '1998'),
  ]

  build() {
    Column() {
      Row() {
        Image($r('app.media.pre'))
          .width(30)
          .position({ x: 5, y: 14 })
          .zIndex(2)
          .onClick(() => {
            router.back()
          })
        Text('零件缺陷排行')
          .width('100%')
          .height(60)
          .backgroundColor('#3362a6')
          .textAlign(TextAlign.Center)
          .fontColor(Color.White)
          .fontSize(22)
          .fontWeight(700)
      }
      .padding({ bottom: 10 })

      //1
      Row() {
        Image($r("app.media.number1"))
          .width(40)
          .height(40)
          .margin({ right: 10 })

        Column() {
          // 文字与数量行
          Row() {
            Text("零件补丁")
              .fontColor(Color.Black)
              .fontSize(20)
              .textAlign(TextAlign.Start)

            Text("5853件")
              .fontColor(Color.Gray)
              .fontSize(14)
              .textAlign(TextAlign.End)
          }
          .justifyContent(FlexAlign.SpaceBetween) // 两端对齐
          .width("100%")                          // 撑满父容器

          // 进度条行
          Row() {
            Progress({ value: 80 })
              .color(Color.Red)
              .width("100%")                       // 进度条填满容器
          }
        }
        .width("80%") // 保持原有宽度比例
      }.width("100%")
      .height(50)
      .backgroundColor(Color.White)
      .margin({ bottom: 5 })
      .padding({ left: 20, right: 20 }).height(50)

      //2
      Row() {
        Image($r("app.media.number2"))
          .width(40)
          .height(40)
          .margin({ right: 10 })

        Column() {
          // 文字与数量行
          Row() {
            Text("表面划痕")
              .fontColor(Color.Black)
              .fontSize(20)
              .textAlign(TextAlign.Start)

            Text("4981件")
              .fontColor(Color.Gray)
              .fontSize(14)
              .textAlign(TextAlign.End)
          }
          .justifyContent(FlexAlign.SpaceBetween) // 两端对齐
          .width("100%")                          // 撑满父容器

          // 进度条行
          Row() {
            Progress({ value: 75 })
              .color(Color.Orange)
              .width("100%")                       // 进度条填满容器
          }
        }
        .width("80%") // 保持原有宽度比例
      }.width("100%")
      .height(50)
      .backgroundColor(Color.White)
      .margin({ bottom: 5 })
      .padding({ left: 20, right: 20 }).height(50)

      //3
      Row() {
        Image($r("app.media.number3"))
          .width(40)
          .height(40)
          .margin({ right: 10 })

        Column() {
          // 文字与数量行
          Row() {
            Text("零件夹杂物")
              .fontColor(Color.Black)
              .fontSize(20)
              .textAlign(TextAlign.Start)

            Text("3677件")
              .fontColor(Color.Gray)
              .fontSize(14)
              .textAlign(TextAlign.End)
          }
          .justifyContent(FlexAlign.SpaceBetween) // 两端对齐
          .width("100%")                          // 撑满父容器

          // 进度条行
          Row() {
            Progress({ value: 62 })
              .color(Color.Yellow)
              .width("100%")                       // 进度条填满容器
          }
        }
        .width("80%") // 保持原有宽度比例
      }.width("100%")
      .height(50)
      .backgroundColor(Color.White)
      .margin({ bottom: 5 })
      .padding({ left: 20, right: 20 }).height(50)

      //4
      Row() {
        Image($r("app.media.number4"))
          .width(40)
          .height(40)
          .margin({ right: 10 })

        Column() {
          // 文字与数量行
          Row() {
            Text("表面凹凸")
              .fontColor(Color.Black)
              .fontSize(20)
              .textAlign(TextAlign.Start)

            Text("2833件")
              .fontColor(Color.Gray)
              .fontSize(14)
              .textAlign(TextAlign.End)
          }
          .justifyContent(FlexAlign.SpaceBetween) // 两端对齐
          .width("100%")                          // 撑满父容器

          // 进度条行
          Row() {
            Progress({ value: 50 })
              .color('#ff53c853')
              .width("100%")                       // 进度条填满容器
          }
        }
        .width("80%") // 保持原有宽度比例
      }.width("100%")
      .height(50)
      .backgroundColor(Color.White)
      .margin({ bottom: 5 })
      .padding({ left: 20, right: 20 }).height(50)

      //5
      Row() {
        Image($r("app.media.number5"))
          .width(40)
          .height(40)
          .margin({ right: 10 })

        Column() {
          // 文字与数量行
          Row() {
            Text("表面裂纹")
              .fontColor(Color.Black)
              .fontSize(20)
              .textAlign(TextAlign.Start)

            Text("1988件")
              .fontColor(Color.Gray)
              .fontSize(14)
              .textAlign(TextAlign.End)
          }
          .justifyContent(FlexAlign.SpaceBetween) // 两端对齐
          .width("100%")                          // 撑满父容器

          // 进度条行
          Row() {
            Progress({ value: 40 })
              .color('#ff60e2e2')
              .width("100%")                       // 进度条填满容器
          }
        }
        .width("80%") // 保持原有宽度比例
      }.width("100%")
      .height(50)
      .backgroundColor(Color.White)
      .margin({ bottom: 5 })
      .padding({ left: 20, right: 20 }).height(50)

      //6
      Row() {
        Image($r("app.media.number6"))
          .width(40)
          .height(40)
          .margin({ right: 10 })

        Column() {
          // 文字与数量行
          Row() {
            Text("其它缺陷")
              .fontColor(Color.Black)
              .fontSize(20)
              .textAlign(TextAlign.Start)

            Text("1623件")
              .fontColor(Color.Gray)
              .fontSize(14)
              .textAlign(TextAlign.End)
          }
          .justifyContent(FlexAlign.SpaceBetween) // 两端对齐
          .width("100%")                          // 撑满父容器

          // 进度条行
          Row() {
            Progress({ value: 35 })
              .color('#ff04f6da')
              .width("100%")                       // 进度条填满容器
          }
        }
        .width("80%") // 保持原有宽度比例
      }.width("100%")
      .height(50)
      .backgroundColor(Color.White)
      .margin({ bottom: 5 })
      .padding({ left: 20, right: 20 }).height(50)

      //RENEW
      Row() {
        Text('更新排行')
          .width('90%')
          .textAlign(TextAlign.End)
          .fontSize(18)
          .fontColor(Color.Gray)
        Image($r('app.media.refresh'))
          .height(30)
          .interpolation(ImageInterpolation.High)
      }.width('100%')
      .border({width:{bottom:1},color:'#a3e5e3e3'})
      //.padding({ top: 8, bottom: 8, left: 18, right: 30 })
      //.backgroundColor(Color.White)

      // 缺陷排行列表
      // ForEach(this.defects, (defect) => {
      //   Row() {
      //     Image(defect.img)
      //       .width(40)
      //       .height(40)
      //       .margin({ right: 10 })
      //     Column() {
      //       Text(defect.text1)
      //         .fontSize(20)
      //         .fontColor(Color.Black)
      //
      //       Progress({
      //         value: 77, // 设置进度条的值为77%
      //         //strokeWidth: 4, // 进度条的线宽
      //         //trackColor: '#e0e0e0', // 进度条背景色
      //         //color: '#ff2559a5', // 进度条颜色
      //         //showInfo: true, // 显示进度数值
      //         //format: (percent) => `${percent}%`, // 格式化进度数值显示
      //       }).color( '#ff2559a5')
      //         .width('70%')
      //         .height(10)
      //       Text(defect.text2)
      //         .fontSize(20)
      //         .fontColor(Color.Black)
      //     }
      //   }
      //   .width("100%")
      //   .height(50)
      //   .backgroundColor(Color.White)
      //   .margin({ bottom: 5 })
      //   .padding({ left: 20, right: 20 })
      // })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff1f0f0')
  }
}