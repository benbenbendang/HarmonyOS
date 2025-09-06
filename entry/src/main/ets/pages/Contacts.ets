// entry/src/main/ets/pages/Contacts.ets
@Component
export default struct ContactsPage {
  @State contacts: string[] = [
    '阿强','班长','陈晨','达芬奇',
    'Echo','Frank','郭鑫','Henry',
    '老王','孙权‘皮特','孙悟空',
    'Tom','Vincent','王小明','杨幂','张三','赵六'
  ]
  @State keyword: string = ''

  build() {
    Column() {
      // 搜索框
      Row() {
        TextInput({ placeholder: '搜索联系人' })
          .height(36)
          .borderRadius(18)
          .backgroundColor('#f0f0f0')
          .padding({ left: 12, right: 12 })
          .width('100%')
      }
      .padding(12)

      // 列表（注意：List 的直接子组件必须是 ListItem / Section / ListItemGroup）
      // —— 联系人列表（整行铺满）——
      List() {
        ForEach(this.contacts.filter(n => n.includes(this.keyword)), (name: string) => {
          ListItem() {
            // 用 Column 包住：行内容 + 分割线
            Column() {
              // 1) 行内容：一定要 width('100%')！
              Row() {
                Image($r('app.media.avatar'))
                  .width(40).height(40).borderRadius(20).margin({ right: 12 })
                Text(name).fontSize(18)
                Blank()
              }
              .width('100%')                       // 关键：拉满整行
              .height(56)
              .padding({ left: 16, right: 16 })    // 左右内边距
              .backgroundColor(Color.White)

              // 2) 分割线：全宽或左侧缩进
              Row()
                .width('100%')                     // 全宽分割线
                .height(0.5)
                .backgroundColor('#11000000')
                .margin({ left: 68 })              // 如果想跟微信一样留头像位，就保留这句；想全宽就删掉
            }
            .width('100%')                          // 保险：父容器也拉满
          }
        }, (name: string) => name)
      }
      .edgeEffect(EdgeEffect.None)
      .width('100%')
      .height('100%')
      .backgroundColor('#f5f5f5')                   // 列表底色，行内用白色


    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')
  }
}
