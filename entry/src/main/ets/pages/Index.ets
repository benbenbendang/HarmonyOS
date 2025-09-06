import MusicPage from './MusicPage'
import ContactsPage from './Contacts'
import GradientDemo from './GradientDemo'

@Entry
@Component
struct Index {
  build() {
    Tabs({ barPosition: BarPosition.End }) {
      // Tab 1：音乐
      TabContent() {
        MusicPage()
      }
      .tabBar({
        icon: $r('app.media.music1'), // 暂时复用；有音乐图标时换成 app.media.music1
        text: '音乐'
      })

      // Tab 2：通讯录
      TabContent() {
        ContactsPage()
      }
      .tabBar({ icon: $r('app.media.addressBook1'), text: '通讯录' })

      // Tab 3：发现（放调色板）
      TabContent() {
        GradientDemo()
      }
      .tabBar({ icon: $r('app.media.discover1'), text: '发现' })

      // Tab 4：我的（保持你原来的个人信息界面）
      TabContent() {
        Column() {
          Row() {
            Text('用户信息').fontSize(24).fontWeight(FontWeight.Bold)
          }
          .width('100%').height(60)
          .justifyContent(FlexAlign.Center)
          .backgroundColor(Color.Blue)
          .margin({ bottom: 20 })
          .foregroundColor(Color.White)

          Row() {
            Image($r('app.media.avatar')).width(80).height(80).borderRadius(40).margin({ right: 35 })
            Column() {
              Text('姓名：孙权').fontSize(18).fontWeight(FontWeight.Medium)
              Text('年龄：24').fontSize(16).fontColor(Color.Gray).margin({ top: 6 })
              Text('城市：宿迁').fontSize(16).fontColor(Color.Gray).margin({ top: 6 })
            }.alignItems(HorizontalAlign.Start)
          }
          .width('100%').height(100)
          .alignItems(VerticalAlign.Center)
          .padding(10)

          Row() {
            Button('消息').width(100).backgroundColor(Color.Green)
            Button('关注').width(100).backgroundColor(Color.Orange)
            Button('更多').width(100).backgroundColor(Color.Gray)
          }
          .width('100%').justifyContent(FlexAlign.SpaceAround)
        }
        .width('100%').height('100%')
      }
      .tabBar({ icon: $r('app.media.my1'), text: '我的' })
    }
    .scrollable(true)
  }
}
