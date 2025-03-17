@Entry
@Component
struct Ring_test {
  @State message: string = 'Hello World'

  build() {
    Row() {
      this.StatsBuilder({
        label: '夹杂物',
        value: 265,
        recommend: 1266,
        color: "#ff9c97"
      })

    }
    .width('100%')
    .justifyContent(FlexAlign.SpaceEvenly)
    .padding({ top: 30, bottom: 35 })
  }

  @Builder StatsBuilder($$: {
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
            .fontSize(12)
            .fontColor(Color.Gray)
          Text(`${$$.value.toFixed(0)}/${$$.recommend.toFixed(0)}`)
            .fontSize(16)
            .fontWeight(15)
        }
      }

      Text(`${$$.label}`)
        .fontSize(12)
        .fontColor("#b5b5b7")
    }
  }
}