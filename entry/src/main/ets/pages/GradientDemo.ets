// 调色板演示页面（独立组件）
@Component
export default struct GradientDemo {
  build() {
    Column() {
      Text("Generic Gradient").fontColor('#FFFFFF').fontSize(24).margin(10)

      Row() {
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#845EC2').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#D65DB1').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#FF6F91').borderRadius(10)
      }
      .margin(10)

      Row(){
        Text('#845EC2').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#D65DB1').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#FF6F91').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
      }
      .margin({ left:10, right:10 })
      .backgroundColor('#4dffffff')

      Row() {
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#FF9671').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#FFC75F').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#292800').borderRadius(10)
      }
      .margin(10)

      Row(){
        Text('#FF9671').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#FFC75F').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#292800').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
      }
      .margin({ left:10, right:10 })
      .backgroundColor('#4dffffff')

      Row().width('100%').height(1).backgroundColor('#FFFFFF').margin({top:10})

      Text("Matching Gradient").fontColor('#FFFFFF').fontSize(24).margin(10)

      Row() {
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#845EC2').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#2C73D2').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#0081CF').borderRadius(10)
      }
      .margin(10)

      Row(){
        Text('#845EC2').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#2C73D2').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#0081CF').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
      }
      .margin({ left:10, right:10 })
      .backgroundColor('#4dffffff')

      Row() {
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#0089BA').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#008E9B').borderRadius(10)
        Column().layoutWeight(1).aspectRatio(1).margin(5).backgroundColor('#008F7A').borderRadius(10)
      }
      .margin(10)

      Row(){
        Text('#0089BA').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#008E9B').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
        Text('#008F7A').layoutWeight(1).fontColor('#FFFFFF').textAlign(TextAlign.Center).margin({top:3,bottom:3})
      }
      .margin({ left:10, right:10 })
      .backgroundColor('#4dffffff')

    }
    .width('100%')
    .height('100%')
    .backgroundColor('#000000')
  }
}
