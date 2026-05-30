# 課題A-01 技術ブログ（Articles）の管理API

## 概要

`シンプルな「技術ブログ（Articles）の管理API」の構築` という課題で作成したRailsアプリケーション。

## 課題内容

### 📋 ミニ課題：シンプルな「技術ブログ（Articles）の管理API」の構築

Railsの命名規約や `rails generate` コマンド、`resources` ルーティングの自動連携を体感するための課題です。ビュー（画面）は作成せず、APIサーバーとしてJSONを返却する形式（あるいは最小限のCRUD処理）を想定しています 。

### 【要件】

1. **リソースの定義（データモデル）**
    - 以下の属性を持つ `Article`（記事）モデルを作成してください。
        - `title`: 文字列（必須項目）
        - `content`: テキスト（必須項目）
        - `published`: 真偽値（デフォルトは `false`）
2. **ルーティングとコントローラー**
    - `config/routes.rb` で `resources` を使用し、標準的なCRUD処理に対応するルーティングを定義してください 。
    - 定義されたルーティングに基づき、対応するコントローラーのアクション（`index`, `show`, `create`, `update`, `destroy`）を実装してください 。
3. **APIとしての振る舞い（JSON返却）**
    - 各アクションは、Webページ（HTML）ではなく、適切なHTTPステータスコードと共に **JSON形式** でデータを返却するようにしてください（例: 成功時はデータと `200 OK` や `201 Created`、バリデーションエラー時はエラーメッセージと `422 Unprocessable Entity`） 。
4. **バリデーション**
    - モデル層で `title` と `content` が空でないことを担保するバリデーションを設定してください 。

## サーバー起動手順

### 1. gemをインストールする

```bash
bundle install
```

### 2. データベースを作成する

```bash
bin/rails db:create
```

### 3. Railsサーバーを起動する

```bash
bin/rails server
```
