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

