# アプリケーション名
MotiveMaster

# アプリケーション概要
本アプリを使っていただくことで自分のツイートから現在の感情を判断することが出来、感情をコントロールすることを目指しました。
楽しいと判断出来たならその感情を維持し、悲しいと判断出来たならその感情を楽しいものへと変化させる。この感情のコントロールの助けになればいいと思い本アプリを開発しました。

# URL
https://motivemaster.herokuapp.com/

# テスト用アカウント
## ログインID
tester01@gmail.com

## パスワード
tester01

# 挙動確認用動画
[![](https://img.youtube.com/vi/c42SudJ8SQs/0.jpg)](https://www.youtube.com/watch?v=c42SudJ8SQs)

# 利用方法
①テスト用アカウントでログイン

②『日程を選択』から本日の日程を選ぶ

③建てられたルーム内でツイートと現在の感情を選択し投稿

④ルーム上部の表示で現在の感情が判別できる

# 目指した問題解決
SNS疲れを起こす人々の手助けを目標としました。
多くの人がSNSを利用し日々過ごしておりますが、その結果『SNS疲れ』を起こしている人をよく見かけます。
SNS疲れを治すにはSNSから離れるのが解決策の一つですが、現代社会においてそれは難しいと私は考えました。
そこでSNSの機能を持ちながら、自分のモチベーション管理を行えるアプリを作ることが出来れば問題解決へ繋がるのではないかと考え本アプリを作成しました。

# 洗い出した要件
## トップページ
【ボタン】
- ルーム作成するボタンがある

【表示】
- 作成されたルーム一覧を確認することができる

## ツイート投稿ページ
【ボタン】
- ツイートを投稿するボタンがある
- 感情をプルダウン形式で選択することができるボタンがある
- トップページに戻るボタンがある

【表示】
- 投稿したツイートを確認できる
- 現在の感情がどうなっているかを確認できる

# 実装した機能の説明
①ユーザー管理機能
サインアップ、ログイン、ログアウトが可能です。

②ツイートルーム作成機能
カレンダーから日程を選択し、作成されたルーム内でツイートを行うことが出来ます。

③ツイート投稿機能
作成したルーム内で自由にツイートを行うことが出来ます。また同時にその時の感情を投稿することで自分の現在の感情を判断することが可能です。
またツイートを行うたびに現在の感情が変化し、リアルタイムで自分の感情を判断することが出来ます。

# 実装予定の機能
①モチベーションアップ機能
自分の感情が『悲しい』場合、その人を元気にさせるような曲を表示します。
表示される曲は事前にユーザー自身がサイトにて登録することが出来、その中からランダムで表示されるようにします。

②デザインの変更
現在は機能実装に重視している為無機質なページとなっておりますが、より使いたくなるアプリを目指す為にデザインの変更を行います。

③細かな修正
現場確認されている修正点として、
・カレンダーで過去の日程を選択できる
・一度作ったルームを削除できない
といったものが挙げられます。これを修正します。

# テーブル設計
## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name  | string | null: false |

### Association
- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column  | Type    | Options                        |
| ------- | ------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type    | Options                        |
| ------- |  ------- | ------------------------------ |
| content    | string  |
| user_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

# ローカル環境
## Rubyのver
ver2.6.5

## データベース環境
Mysql

## 使用したGEM
- rspec
- Factory_bot
- faker
- Simple_Calendar
- Active_Hash
- Rails_12factor
- devise
- pry_rails
- mini_magick
- image_processing


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

