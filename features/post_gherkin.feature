# language: zh-TW
功能: 發表、修改、刪除 gherkin
  背景:
    假如我成功登入 Trellis

    場景: 發表一則 gherkin 
      當我按下發表鍵的時候
      假如我有發表 gherkin 的權力
      那麼我會被引導到發表介面

    場景: 修改一則 gherkin
      當我在一則 gherkin 頁面時
      假如我有修改這則 gherkin 的權力
      那麼我會看到修改鍵
      當我按下修改鍵的時候
      那麼我會被引導到修改介面

    場景: 刪除一則 gherkin
      當我在一則 gherkin 頁面時
      假如我有刪除這則 gherkin 的權力
      那麼我會看到刪除鍵
      當我按下刪除鍵的時候
      那麼我會被引導到刪除介面
