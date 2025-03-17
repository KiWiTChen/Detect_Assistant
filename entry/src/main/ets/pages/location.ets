import DatePickDialog from './DatePickDialog'
import DateUtil from './DateUtil'

@Entry
@Component
export struct Location {
  @StorageProp('selectedDate') selectedDate: number = DateUtil.beginTimeOfDay(new Date())
  controller: CustomDialogController = new CustomDialogController({
    builder: DatePickDialog({selectedDate: new Date(this.selectedDate)})
  })


  build() {
    Column() {
      //界面栏
      Text('任务日志')
        .width('100%')
        .height(60)
        .backgroundColor('#3362a6')
        .textAlign(TextAlign.Center)
        .fontColor(Color.White)
        .fontSize(30)
        .fontWeight(700)
        .margin({top:-182})

      //日期组件
      Row(){
        Text('2025/03/10').fontColor('#5d907a').textAlign(TextAlign.Center)
        Image($r('app.media.ic_public_spinner'))
          .width(20)
          .fillColor('#5d907a')
      }.onClick(() => this.controller.open())

      //可视化统计卡片
      Row(){
        this.StatsBuilder({label: '已通过', value: 12})

        Stack(){
          // 进度条
          Progress({
            value: 1278,
            total: 2000,
            type: ProgressType.Ring
          })
            .width(120)
            //.style({strokeWidth: CommonConstants.DEFAULT_10})
            .color("#02BD79")
          //统计数据
          this.StatsBuilder({label: '今日已测', value: 1278,tips: `待测：722`})
        }
        this.StatsBuilder({label: '未通过', value: 1266})
      }
      .width('90%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .padding({top: 30, bottom: 35})
      .border({width:2,color:'#a3e5e3e3'})
      .shadow({ radius: 6, color: '#ff736c6c' })

      Row(){
        Image($r('app.media.alert')).height(20)
        Text("今日主要缺陷").fontColor('#ff678fd6').fontSize(18).textAlign(TextAlign.Center)
      }.margin({top:10,bottom:10})

      Row() {
        this.StatsBuilder2({
          label: '夹杂物',
          value: 265,
          recommend: 1266,
          color: "#8de2c3"
        })

        this.StatsBuilder2({
          label: '补丁',
          value: 641,
          recommend: 1266,
          color: '#ff9c97'
        })

        this.StatsBuilder2({
          label: '划痕',
          value: 350,
          recommend: 1266,
          color: '#ffcc83'
        })
      }
      .width('90%')
      .justifyContent(FlexAlign.SpaceEvenly)
      .padding({ top: 30, bottom: 35 })
      .border({width:{bottom:1},color:'#a3e5e3e3'})
      .shadow({ radius: 5, color: '#ff736c6c' })

      Row(){
        Row(){
          Row(){
            Image($r('app.media.DS')).height(28).margin({left:6})
            Text('AI分析报告').fontSize(18).margin({left:8}).textAlign(TextAlign.Center)
            Image($r('app.media.arrow_forward')).height(20).margin({left:0})
          }.margin({top:-25})

          Row(){
            Text('提供零件生产指导').fontSize(16).fontColor(Color.Gray).textAlign(TextAlign.Start)
          }.margin({left:-140,top:30})

        }
        .width('45%')
        .height(80)
        .border({width : 1 ,color: '#a3e5e3e3' })
        .margin({left : 10,right :2,bottom : 4})
        .shadow({ radius: 5, color: '#ff736c6c' })


        Row(){
          Row(){
            Image($r('app.media.upload')).height(25).margin({left:2})
            Text('导出日志').fontSize(18).margin({left:8})
            Image($r('app.media.arrow_forward')).height(20).margin({left:20})
          }.margin({top:-25})

          Row(){
            Text('当前状态：已导出').fontSize(16).fontColor(Color.Gray).textAlign(TextAlign.Start)
            Image($r('app.media.dot')).height(26)
          }.margin({top:30,left:-140})
        }
        .width('45%')
        .height(80)
        .border({width : 1 ,color: '#a3e5e3e3' })
        .margin({left : 2,right :10,bottom : 4})
        .shadow({ radius: 5, color: '#ff736c6c' })
      }.margin({top:10})
    }
    .width('100%')
  }

  //第一个环
  @Builder StatsBuilder($$:{label: string, value: number, tips?: string}){
    Column(){
      Text($$.label)
        .fontColor(Color.Gray)
        // .fontWeight(CommonConstants.FONT_WEIGHT_600)
      Text($$.value.toFixed(0))
        .fontSize(20)
        //.fontStyle(FontStyle.Italic)
        // .fontWeight(CommonConstants.FONT_WEIGHT_700)
      if($$.tips){
        Text($$.tips)
          .fontSize(15)
          .fontColor('#b5b5b7')
      }
    }
  }

  //第二个环
  @Builder StatsBuilder2($$: {
    label: string,
    value: number,
    recommend: number,
    color: ResourceStr
  }) {
    Column() {
      Stack() {
        Progress({
          value: $$.value,
          total: 1266,
          type: ProgressType.Ring
        })
          .width(95)
            //.style()
          .color($$.color)
        Column() {
          Text('缺陷占比')
            .fontSize(15)
            .fontColor(Color.Gray)
          Text(`${$$.value.toFixed(0)}/${$$.recommend.toFixed(0)}`)
            .fontSize(16)
            .fontWeight(15)
        }
      }

      Text(`${$$.label}`)
        .fontSize(15)
        .fontColor('#ff678fd6')
    }
  }
}