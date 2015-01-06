# language: zh-TW
功能: 資料塑模
  場景: 發表一則 gherkin 
    假如我有發表 gherkin 的權力
    當我在發表 gherkin 的時候
    那麼這則 gherkin 應該可以用 JSON 呈現
    並且這則 gherkin 應該可以用 JavaScript 操作
    並且這則 gherkin 應該可以用 JSON 儲存
    假如我選擇台式中文的 gherkin 語彙
    那麼這則 gherkin 應該帶有語言資訊

  場景: 讀取一則 gherkin 
    假如我有讀取 gherkin 的權力
    當我要讀取某則 gherkin 的時候
    那麼我可以得到一份 JSON 文件
    並且這份 JSON 文件可以還原為一則 gherkin
    假如這則 gherkin 是以台式中文語彙表述
    那麼這則 gherkin 應該帶有語言資訊
    並且這則 gherkin 應該以台式中文語彙呈現
