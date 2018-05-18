class Review < ApplicationRecord
  validates_presence_of :content, :author
  belongs_to :user
  belongs_to :book
end