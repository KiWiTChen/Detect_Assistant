import router from '@ohos.router';

@Entry
@Component
struct Login_suc {
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
      Text('认证结果')
        .width('100%')
        .height(60)
        .backgroundColor('#3362a6')
        .textAlign(TextAlign.Center)
        .fontColor(Color.White)
        .fontSize(30)
        .fontWeight(700)
      Image($r('app.media.suc'))
        .width(150)
        .interpolation(ImageInterpolation.High)
        .margin({ top: 40, bottom: 20, left: 0, right: 0 })
      Text('操作成功')
        .fontColor('#3362a6')
        .fontSize(28)
        .fontWeight(700)
        .letterSpacing(4)
      Text('认证成功 , 将为你自动登录')
        .fontColor('#3362a6')
        .fontSize(18)
        .margin({ top: 25, bottom: 30, left: 0, right: 0 })
      Button('登 录', { type: ButtonType.Normal })
        .width('80%')
        .height(60)
        .fontSize(25)
        .borderRadius(8)
        .onClick(() => {
          router.replaceUrl({
            url: 'pages/Index'
          })
        })
    }
    .width('100%')
  }
}