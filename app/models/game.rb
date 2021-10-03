class Game < ApplicationRecord
  has_many :memes
  has_one_attached :template
end
