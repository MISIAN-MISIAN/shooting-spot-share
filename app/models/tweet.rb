class Tweet < ApplicationRecord

  # validates :text, presence: true, unless: :image?
  validates :text,:image, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy  #「dependent: :destroy」は、この場合「投稿が削除された時に、同時にコメントも消去する」という意味です
  mount_uploader :image, ImageUploader


  # def self.search(search)
  #   return Tweet.all unless search
  #   Tweet.where('text LIKE(?)', "%#{search}%")
  # end
  # 同じ意味下記、検索機能

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
