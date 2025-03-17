import router from '@ohos.router';

@Entry
@Component
struct S1et {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Image($r('app.media.pre'))
        .width(30)
        .position({ x: 5, y: 14 })
        .zIndex(2)
        .onClick(() => {
          router.back()
        })
      Text('应用设置')
        .width('100%')
        .height(60)
        .backgroundColor('#3362a6')
        .textAlign(TextAlign.Center)
        .fontColor(Color.White)
        .fontSize(30)
        .fontWeight(700)
      // 基本信息和设置
      Column() {
        Row() {
          Row() {
            Text('系统语言')
              .fontSize('20')
              .margin({ left: 25 })
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })

        Row() {
          Row() {
            Text('清理缓存')
              .fontSize('20')
              .margin({ left: 25, right: 130 })
            Text('0.00 MB')
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })

        Row() {
          Row() {
            Text('上传错误日志')
              .fontSize('20')
              .margin({ left: 25 })
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })

        // Row() {
        //   Row() {
        //     Text('分享给12123给好友')
        //       .fontSize('20')
        //       .margin({ left: 25 })
        //   }
        //   //   箭头图片
        //   Image($r('app.media.arrow_forward'))
        //     .width('30')
        //     .height('30')
        //     .interpolation(ImageInterpolation.High)
        //     .zIndex(200)
        // }
        // .width('100%')
        // .height('70')
        // .backgroundColor(Color.White)
        // .justifyContent(FlexAlign.SpaceBetween)
        // .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        // .border({ width: { bottom: 1 }, color: '#eeeeee' })

        // Row() {
        //   Row() {
        //     Text('去评分')
        //       .fontSize('20')
        //       .margin({ left: 25 })
        //   }
        //   //   箭头图片
        //   Image($r('app.media.arrow_forward'))
        //     .width('30')
        //     .height('30')
        //     .interpolation(ImageInterpolation.High)
        //     .zIndex(200)
        // }
        // .width('100%')
        // .height('70')
        // .backgroundColor(Color.White)
        // .justifyContent(FlexAlign.SpaceBetween)
        // .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        // .border({ width: { bottom: 1 }, color: '#eeeeee' })

        Row() {
          Row() {
            Text('服务协议')
              .fontSize('20')
              .margin({ left: 25 })
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })

        Row() {
          Row() {
            Text('隐私政策')
              .fontSize('20')
              .margin({ left: 25 })
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })

        Row() {
          Row() {
            Text('检查更新')
              .fontSize('20')
              .margin({ left: 25 })
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })

        Row() {
          Row() {
            Text('应用版本')
              .fontSize('20')
              .margin({ left: 25, right: 130 })
            Text('2.0.1')
          }
          //   箭头图片
          Image($r('app.media.arrow_forward'))
            .width('30')
            .height('30')
            .interpolation(ImageInterpolation.High)
            .zIndex(200)
        }
        .width('100%')
        .height('70')
        .backgroundColor(Color.White)
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ top: 10, bottom: 10, left: 20, right: 10 })
        .border({ width: { bottom: 1 }, color: '#eeeeee' })


        Row() {
          Button('退出登录', { type: ButtonType.Normal })
            .width(300)
            .height(50)
            .backgroundColor('#eeeeee')
            .border({ width: 1.5, color: Color.Red })
            .fontColor(Color.Red)
            .fontSize(23)
            .borderRadius(5)
            .onClick(() => {
              router.replaceUrl({
                url: 'pages/login'
              })
            })
        }
        .margin({ top: 20 })
      }
      .backgroundColor('#eee')
      .height('100%')
    }
    .width('100%')
  }
}