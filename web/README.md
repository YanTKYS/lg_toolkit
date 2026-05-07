# web

静的Webツール（HTML/CSS/JavaScript）向けテンプレートを配置するフォルダです。

## 目的

- 閉域環境でそのまま動作する最小構成を提供
- 外部依存なしで開始できる雛形を提供

## 使い方

1. `template-basic/` をコピーして新規ツールを作成
2. UI・業務ロジックはコピー先で実装
3. 複数ツールで共通化が必要になった処理のみ `lg_toolkit` 側に取り込みを検討

## 共通部品の命名

Web向けの共通部品を追加する場合は、名称を `lgtoolkit` に統一します。

- JavaScript: `lgtoolkit.js`
- CSS: `lgtoolkit.css`

ただし、`template-basic/` のような個別テンプレート内では、雛形として理解しやすい `script.js` / `style.css` を使用できます。

## 注意

- CDNや外部JSライブラリを前提にしない
- ビルドツール（npm等）なしで実行できる状態を維持する
