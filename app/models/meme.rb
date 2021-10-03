class Meme < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_one_attached :image
end
