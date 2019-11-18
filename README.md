# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :tweets
- has_many :comments
- has_many :likes





## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: ture|
|image|string|null: ture|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :likes





## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: ture|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tweet



## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|tweet_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :tweet









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
