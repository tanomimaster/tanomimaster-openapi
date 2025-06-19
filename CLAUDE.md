# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## コマンド

### テストと検証

- `bundle install` - Ruby gemの依存関係をインストール
- `bundle exec ruby test.rb` - openapi3_parserとOpenAPIParserを使用してOpenAPI仕様を検証

### 開発ワークフロー
- GitHub ActionsでRuby 3.2, 3.3, 3.4バージョンでのテストがpush/PR時に自動実行
- `act pull_request` でGitHub Actionsをローカル実行

## アーキテクチャ

日本の発注・調達システム「タノミマスター」のREST APIサービス用のOpenAPI 3.0仕様リポジトリです。

### 主要コンポーネント
- **tanomimaster.yml** - メインのOpenAPI仕様ファイル（現在v3.12.8）
- **test.rb** - OpenAPI仕様の構文が正しく、解析可能であることを確認する検証スクリプト
- **Gemfile** - Ruby依存関係: OpenAPI検証用の`committee`と`openapi3_parser`

### API構造
API仕様は3種類のエンドポイントを定義:
- 小売（発注者）API
- メーカ（受注者）API
- 共通API

### ブランチ戦略
- `develop` - アクティブな開発ブランチ
- `master` - プロダクションリリース（@matsuboによるレビューが必要）
- developからmasterへのマージ時にバージョンを増分

### 認証
管理画面から取得したAPIキーを使用したBearerトークン認証。

### AWSデプロイ
- ECSタスク定義ファイル（`task-definition.json`, `task-definition-modified.json`）
- デプロイ自動化用のシェルスクリプト（`copy_*.sh`, `update_task_definition.sh`）

## 重要なファイル
- `tanomimaster.yml` - OpenAPI仕様（大きなファイルのため、読み取り時はoffset/limitを使用）
- `test.rb` - openapi3_parserとOpenAPIParserの両方を使用した検証ロジック
- `.github/workflows/test.yml` - CI/CD設定
