
# カード
has many タッグ
* 面
* 答え
* 音
* 統計

# 漢字 < カード
has many 関係な漢字 :class => 漢字
has many 単語
* 音読み
* 訓読み
* 意味\_heisig
* 部首

# 単語 < カード
has many 漢字
has many 関係な単語 :class => 単語
* かな

# タッグ
belongs to many 漢字
belongs to many 単語
* 名前

# 統計
belongs to 漢字
belongs to 単語
* 最近の答え
* 成功率
* 試し

# 課題
has many タッグ
has one 設定
* 名前

# 設定
belongs to 課題
* reminder
* 発音をプレイする


