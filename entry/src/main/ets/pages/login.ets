import font from '@ohos.font'
import { Size } from '@ohos/hypium'
import router from '@ohos.router';
import url from '@ohos.url';
import promptAction from '@ohos.promptAction';

@Entry
@Component
struct Index {
  @State PhotoLogin: string = '手机号登录'
  @State PhotoNumber: string = ''
  @State password: string = ''

  build() {
    Column() {
      Column() {
        // 手机号登录
        Text(this.PhotoLogin)
          .fontSize(37)
          .fontWeight(FontWeight.Bold)
          .width('100%')
          .padding({ top: 43, bottom: 42, left: 0, right: 0 })
        // 账号输入框
        Row() {
          Image($r('app.media.login_photo'))
            .width(30)
            .interpolation(ImageInterpolation.High)
          TextInput({ placeholder: '请输入手机号码' })
            .placeholderColor('#a9b0b0')
            .placeholderFont({ size: 25 })
            .backgroundColor('#fff')
            .caretColor('#000')
            .maxLength(11)
            .fontSize(20)
            .type(InputType.PhoneNumber)
            .height(50)
            .onChange((value) => {
              this.PhotoNumber = value
            })
        }
        .border({ width: { bottom: 1 }, color: '#80aeb5b5' })
        .padding({ top: 0, bottom: 10, left: 0, right: 30 })
        .margin({ top: 0, bottom: 20, left: 0, right: 0 })
        // 密码账号输入框
        Row() {
          Image($r('app.media.login_key'))
            .width(30)
            .interpolation(ImageInterpolation.High)
          TextInput({ placeholder: '请输入密码' })
            .placeholderColor('#a9b0b0')
            .placeholderFont({ size: 25 })
            .backgroundColor('#fff')
            .caretColor('#000')
            .fontSize(20)
            .type(InputType.Password)
            .showPasswordIcon(false) //关闭眼睛
            .height(50)
            .onChange((value) => {
              this.password = value
            })
        }
        .border({ width: { bottom: 1 }, color: '#80aeb5b5' })
        .padding({ top: 0, bottom: 10, left: 0, right: 30 })
        .margin({ top: 0, bottom: 40, left: 0, right: 0 })

        Text('用工作证登录')
          .width('100%')
          .fontColor('#5d84b0')
          .margin({ top: 0, bottom: 40, left: 0, right: 0 })
        Button('登 录')
          .width('100%')
          .height(60)
          .type(ButtonType.Normal)
          .borderRadius('20px')
          .backgroundColor('#3a67aa')
          .margin({ top: 0, bottom: 0, left: 0, right: 0 })
          .shadow({ radius: 10, color: '#85a0cd' })
          .fontSize(25)
          .onClick(() => {
            if (this.PhotoNumber == '13986595647' && this.password == '123456') {
              router.pushUrl({
                url: 'pages/login_suc'
              })
            } else {
              promptAction.showToast({
                message: '账号或密码输入错误',
                duration: 2000,
                bottom: 70
              });
            }
          })
      }
      .width('100%')
      .padding({ top: 0, bottom: 0, left: 30, right: 30 })

      Column() {
        Row() {
          Text('找回密码') //这个用外盒子的flex布局做
            .fontColor(Color.White)
            .padding({ top: 0, bottom: 0, left: 0, right: 10 })
            .border({ width: { right: 1 }, color: Color.White })

          Text('用户注册') //这个用外盒子的flex布局做
            .fontColor(Color.White)
            .padding({ top: 0, bottom: 0, left: 10, right: 0 })
        }

      }
      .width('100%')
      .height('45%')
      .backgroundImage($r('app.media.login_bg'))
      .backgroundImageSize({ width: '100%' })
      .backgroundImagePosition({ x: -1 })
      .justifyContent(FlexAlign.End)
      .padding({ top: 0, bottom: 30, left: 0, right: 0 })
    }
    .width('100%')
  }
}