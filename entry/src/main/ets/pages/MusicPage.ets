// entry/src/main/ets/pages/MusicPage.ets
type PlayMode = '顺序播放' | '列表循环' | '随机播放'

@Component
export default struct MusicPage {
  @State songs: string[] = [
    '蓝莲哈','最后一哈','太空曼波','基蜜蜜','跳楼基','印度基米','哈雪大冒险'
  ]
  @State playingIndex: number = -1
  @State mode: PlayMode = '顺序播放'

  // —— 播放模式切换 ——
  private nextMode(): void {
    if (this.mode === '顺序播放') this.mode = '列表循环'
    else if (this.mode === '列表循环') this.mode = '随机播放'
    else this.mode = '顺序播放'
  }

  private playAt(i: number): void {
    this.playingIndex = i
  }

  private removeAt(i: number): void {
    this.songs.splice(i, 1)
    if (this.playingIndex === i) this.playingIndex = -1
    else if (this.playingIndex > i) this.playingIndex -= 1
  }

  private clearAll(): void {
    this.songs = []
    this.playingIndex = -1
  }

  // —— 小圆按钮：在 Builder 里直接写 UI，不 return；通过参数控制右边距等 ——
  @Builder
  CircleBtn(label: string, onTap: () => void, marginRight: number = 0) {
    Text(label)
      .fontSize(14)
      .width(28).height(28)
      .textAlign(TextAlign.Center)
      .border({ width: 1, color: '#33000000' })
      .borderRadius(14)
      .onClick(onTap)
      .margin({ right: marginRight })
  }

  build() {
    Column() {
      // 标题 + 右上角功能按钮
      Row() {
        Text('当前播放列表')
          .fontSize(20).fontWeight(FontWeight.Bold)
        Text(` (${this.songs.length})`)
          .fontSize(16).fontColor('#808a8f')
        Blank()
        this.CircleBtn('⏲', () => {}, 8)            // 最近播放（示例）
        this.CircleBtn('❤', () => {}, 8)            // 收藏（示例）
        this.CircleBtn('⟳', () => this.nextMode())  // 切换播放模式
      }
      .padding({ left: 16, right: 16, top: 12, bottom: 8 })

      // 播放模式行 + 清空
      Row() {
        Row() {
          Text(this.mode).fontColor('#6b6f76').fontSize(14)
        }
        .height(32)
        .padding({ left: 12, right: 12 })
        .backgroundColor('#10000000')
        .borderRadius(16)

        Blank()

        this.CircleBtn('🗑', () => this.clearAll())
      }
      .padding({ left: 16, right: 16, bottom: 6 })

      // —— 列表 ——（整行铺满 + 分割线）
      List({ space: 0 }) {
        ForEach(this.songs, (name: string, index: number) => {
          ListItem() {
            Column() {
              Row() {
                // 左侧歌名（正在播放高亮）
                Text(name + (this.playingIndex === index ? '  • 正在播放' : ''))
                  .fontSize(16)
                  .fontColor(this.playingIndex === index ? '#1a73e8' : '#222')
                Blank()
                // 右侧控制按钮
                this.CircleBtn('▶', () => this.playAt(index), 12)
                this.CircleBtn('🗑', () => this.removeAt(index))
              }
              .width('100%').height(48)
              .padding({ left: 16, right: 16 })
              .backgroundColor(Color.White)

              // 分割线（全宽）
              Row().width('100%').height(0.5).backgroundColor('#11000000')
            }
            .width('100%')
          }
        }, (name: string, i: number) => `${name}-${i}`)
      }
      .edgeEffect(EdgeEffect.None)
      .width('100%').height('100%')

      // 底部关闭按钮（示例）
      Row() {
        Text('关闭').fontSize(16)
      }
      .width('100%').height(48)
      .justifyContent(FlexAlign.Center)
      .backgroundColor('#00000000')
      .onClick(() => { /* TODO: 返回或隐藏弹层 */ })
    }
    .width('100%').height('100%')
    .backgroundColor('#f7f8fa')
  }
}
