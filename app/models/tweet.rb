class Tweet < ApplicationRecord

  validates :text, presence: true, unless: :image?
end
