# README

## アプリケーション名
motivemaster

## アプリケーション概要
本アプリは現在の自分の感情を確認することができるツイート投稿アプリケーションです。  
ツイート投稿時に自分の感情を表すボタンを選択し投稿することで、投稿ページに自分の現在の感情が表示されます。

## URL


## テスト用アカウント
email:aaaa@gmail.com  
password:12345678

## 利用方法
1.URLにログインする。  
2.ページにテストアカウントでログインする。  
3.日程選択ボタンから本日の日付をクリックし、ツイートルームを作成する。  
4.ツイートルーム上でツイートを入力、感情を表す選択肢を選び送信ボタンを押す。  
5.ツイートルーム上に投稿が表示され、ルーム上部に現在の感情が表示される。  


## 目指した問題解決
本アプリではユーザーがツイートを投稿することで自分の現在の感情を把握し、その感情に沿ってユーザーにアクションの提示を行なうことを目的としています。  
以下に問題解決の一例を記します。  

* ユーザーの感情が『悲しい』場合、元気になるような音楽を提供する。  
* ユーザーの感情が『楽しい』場合、その感情を維持させるようなポジティブな言葉を提供します。

## 要件定義
| 機能           | 目的                            | 詳細    |
| ------------- | --------------------------------| ------ |
| ユーザー管理機能 | deviseを利用したユーザー管理機能を実装 | ・Sign Upページでユーザーの情報を正しく入力するとユーザー登録が完了する。 <br> ・Log inページで登録済みのユーザーの情報を入力するとログインが完了する。 | 
| ツイート投稿機能  | ユーザーがツイートを投稿出来る機能の実装 | ・ツイートする日付を選択するとツイートルームを生成出来る <br> ・ツイートを入力、そして感情を選択して投稿を行うとツイートがルーム上に表示される |

## 機能説明
<a href="https://gyazo.com/c0531506c3a75600e06b51ecee653c8c"><img src="https://i.gyazo.com/c0531506c3a75600e06b51ecee653c8c.gif" alt="Image from Gyazo" width="1000"/></a>


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

