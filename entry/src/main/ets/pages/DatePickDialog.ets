@CustomDialog
export default struct DatePickDialog {

  controller: CustomDialogController
  selectedDate: Date = new Date()
  build() {

      Column() {
        DatePicker({
          start: new Date('2020-01-01'),
          end: new Date(),
          selected: this.selectedDate
        })
          .onChange((value: DatePickerResult) => {
            this.selectedDate.setFullYear(value.year, value.month, value.day)
          })

        Row(){
          Button('取消')
            .width(120)
            .backgroundColor('#b5b5b7')
            .onClick(() => this.controller.close())
          Button('确定')
            .width(120)
            .backgroundColor('#02bd79')
            .onClick(() => {
              // 1.保存日期到全局存储
              AppStorage.SetOrCreate('selectedDate', this.selectedDate.getTime())
              // 2.关闭窗口
              this.controller.close()
            })
        }
      }
      .width('100%')
    }
}