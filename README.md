# PsykheField

マルチプレイヤー対戦アクションのクライアント配布ページ。**非公開の個人プロジェクト。**

ここは**配布用の置き場**。ソースは別のところにある。

## クライアント（Windows）

[PsykheField.exe をダウンロード](PsykheField.exe)（版の情報は [latest.json](latest.json)）

クライアントは起動時にこのページの `latest.json` を見て、自分より新しい版があれば
実行ファイルを取ってきて入れ替わる（`clients/godot-viewer/scripts/AutoUpdate.gd`）。
Godot エディタ経由の開発実行では、置き換える自分の exe が無いため通知のみ行う。

## 公開の手順（開発者向け）

本体リポジトリの `release.ps1` が、クライアントのエクスポート・このリポジトリへのコピー・
`latest.json` の更新・push までを行う。

```
.\release.ps1              組んで置いて push まで
.\release.ps1 -NoPush      置くところまで
.\release.ps1 -Note "..."  latest.json に載せる一言
```

## ライセンス

個人で使うために作ったもの。無保証。
