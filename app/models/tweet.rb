class Tweet < ApplicationRecord

  # validates :text, presence: true, unless: :image?
  validates :text,:image, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy  #「dependent: :destroy」は、この場合「投稿が削除された時に、同時にコメントも消去する」という意味です
  mount_uploader :image, ImageUploader

  # google_map使用時の記載
  # geocoded_by :address
  # after_validation :geocode

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


  # private
  # def geocode
  #   uri = URI.escape("https://maps.googleapis.com/maps/api/geocode/json?address="+self.address.gsub(" ", "")+"&key=#{Rails.application.secrets.google_map_api}")
  #   res = HTTP.get(uri).to_s
  #   response = JSON.parse(res)
  #   self.latitude = response["results"][0]["geometry"]["location"]["lat"]
  #   self.longitude = response["results"][0]["geometry"]["location"]["lng"]
  # end
end
