import router from '@ohos.router'
import { Mydata } from './ItemData'

@Entry
@Component
export struct My {
  items: Mydata[] = [
    new Mydata($r('app.media.my_02'), '实名认证','已认证'),
    new Mydata($r('app.media.my_01'), '我的证件','高级质检工程师'),
    new Mydata($r('app.media.phone'), '手机号码','139****5802'),
    new Mydata($r('app.media.email'), '电子邮箱','yw***@163.com'),
    new Mydata($r('app.media.my_04'), '客服服务',''),
    new Mydata($r('app.media.my_05'), '应用设置',''),
  ]

  build() {
    // 我的
    Column() {
      // 姓名+身份证
      Column() {
        Row(){
          Text('我的')
            .width('100%')
            .textAlign(TextAlign.Center)
            .padding({ top: 10, bottom: 10 })
            .fontColor('#fff')
            .fontWeight(600)
            .fontSize(25)
        }.margin({top : 10 , bottom : 10})

        Row(){

          Column(){
            Image($r("app.media.my"))
              .height(60)
          }.margin({left : 15})

          Column(){
            Row(){
              Text('尹万')
                .fontSize(20)
                .fontColor('#fff')
                .width('100%')
                .padding({ left: 25, bottom: 5 })
            }
            Row(){
              Text('职称：质检工程师')
                .fontSize(18)
                .fontColor('#fff')
                .width('100%')
                .padding({ left: 25 })
            }
          }
        }
      }
      .width('100%')
      .height(140)
      .backgroundColor('#ff2559a5')
      // 基本信息和设置
      Column() {
        ForEach(this.items, (item, index: Number) => {
          if (index == 0) {
            Divider()
              .color('#eee')
              .strokeWidth(15)
          }
          Row() {
            Row() {
              //包含图片+服务文本
              Image(item.img)
                .width('30')
                .height('30')
                .interpolation(ImageInterpolation.High)
              Text(item.text1)
                .fontSize('20')
                .margin({ left: 25 })
              Text(item.text2)
                .fontSize('18')
                .margin({ left: 25 })
                .fontColor(Color.Gray)
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
          .onClick(() => {
            if (index == 5) {
              router.pushUrl({
                url: 'pages/S1et'
              })
            }
          })
          // 111
          // 设置分隔线
          if (index == 0 || index == 1 || index == 2) {
            Divider()
              .opacity(.2)
              .strokeWidth(2)
          } else {
            Divider()
              .color('#eee')
              .strokeWidth(15)
          }
        }, item => JSON.stringify(item))
      }
      .backgroundColor('#eee')
      .height('100%')
    }
    // 我的信息

  }
}