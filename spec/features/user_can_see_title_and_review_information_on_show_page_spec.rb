require 'rails_helper'

describe 'User' do
  describe 'user goes to a books show page' do
    it 'can see the book title, reviews for that book, a rating for the book, and an author of the review' do
      book_1 = Book.create(title: 'Harry Potter')
      review_1 =  

      visit(book_path(book_1))

      expect(current_path).to eq(book_path(book_1))
      expect(page).to have_content(book_1.title)
      expect(page).to 
    end
  end
end
