class Book < ApplicationRecord
  has_many :reviews
  validates_presence_of :title

  def average_rating
    reviews.average(:rating)
  end
end
