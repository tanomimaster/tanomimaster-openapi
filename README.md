# Tanomimaster REST API 仕様書

[![Ruby](https://github.com/tanomimaster/tanomimaster-openapi/actions/workflows/test.yml/badge.svg)](https://github.com/tanomimaster/tanomimaster-openapi/actions/workflows/test.yml)

- OAS（OpenAPI Specification）3.0で構築

## ワークフロー

- OpenAPIを設計し、サーバーサイドでプログラムを作成する
- 開発の中心は`develop`ブランチ
- @matsuboが`tanomimaster-www`をデプロイする際に`develop`ブランチをレビューし、`develop`を`master`にマージする。APIバージョン番号をインクリメントする

- **master**
  - クライアントとベンダーに公開
  - 現在の本番リリース
- **develop**
  - 最新の開発バージョン

サーバーサイドとクライアントサイドのアプリケーションデプロイメントを関連付けるブランチリリースモデルを再定義する必要があります。

## ポリシー

- [Richardson成熟度モデル](https://martinfowler.com/articles/richardsonMaturityModel.html)
  - レベル2が必要
- GitLabのAPI設計に従う
  - https://docs.gitlab.com/ee/api/README.html#gitlab-ci-job-token

## GitHub Actionsをローカルで実行

```bash
% act pull_request
```

## ローカルでOASのvalidation

何も出力されなければOKです。

```
% bundle exec ruby test.rb
```

## ツール

- **エディター**
  - まだ推奨エディターはありません
- **ビューアー**
  - OpenAPI（Swagger）エディター
    - Visual Studio Code拡張機能
    - https://marketplace.visualstudio.com/items?itemName=42Crunch.vscode-openapi
  - Swagger Editor
    - https://editor.swagger.io/
  - Stoplight Studio
    - https://stoplight.io/p/studio/
    - ダウンロード版アプリの方がWeb版より優れています
    - 予期しない動作が多く、予期しない値でYAMLファイルを変更します
