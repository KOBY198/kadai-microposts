class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :micropost

  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'micropost_id'
  has_many :users, through: :reverses_of_favorite, source: :user
end
