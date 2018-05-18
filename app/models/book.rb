class Book < ApplicationRecord
  has_many :reviews
  validates_presence_of :title

  def average_rating
    reviews.average(:rating)
  end

  def highest_rating
    reviews.maximum(:rating)
  end

  def lowest_rating
    reviews.minimum(:rating)
  end
end
