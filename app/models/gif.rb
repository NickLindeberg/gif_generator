class Gif < ApplicationRecord
  validates_presence_of :image
  belongs_to :category

end
