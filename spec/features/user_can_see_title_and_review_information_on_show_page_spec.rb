require 'rails_helper'

describe 'User' do
  describe 'user goes to a books show page' do
    it 'can see the book title, reviews for that book, a rating for the book, and an author of the review' do
      book_1 = Book.create(title: 'Harry Potter')
      user_1 = User.create(name: 'Bobby')
      review_1 =  book_1.reviews.create(content: 'Great Book', user_id: user_1.id, rating: 4)

      visit(book_path(book_1))

      expect(current_path).to eq(book_path(book_1))
      expect(page).to have_content(book_1.title)
      expect(page).to have_content(review_1.content)
      expect(page).to have_content(review_1.rating)
      expect(page).to have_content(user_1.name)
    end

    it 'can see the average rating for the book' do
      book_1 = Book.create(title: 'Harry Potter')
      user_1 = User.create(name: 'Bobby')
      review_1 =  book_1.reviews.create(content: 'Great Book', user_id: user_1.id, rating: 4)
      review_2 =  book_1.reviews.create(content: 'Great Book 66', user_id: user_1.id, rating: 3)
      review_3 =  book_1.reviews.create(content: 'Great Book 55', user_id: user_1.id, rating: 3)

      visit(book_path(book_1))

      expect(page).to have_content(3.33)
    end

    it 'can see the highest rating for the book' do
      book_1 = Book.create(title: 'Harry Potter')
      user_1 = User.create(name: 'Bobby')
      review_1 =  book_1.reviews.create(content: 'Great Book', user_id: user_1.id, rating: 4)
      review_2 =  book_1.reviews.create(content: 'Great Book 66', user_id: user_1.id, rating: 3)
      review_3 =  book_1.reviews.create(content: 'Great Book 55', user_id: user_1.id, rating: 3)

      visit(book_path(book_1))

      expect(page).to have_content(4)
    end

    it 'can see the lowest rating for the book' do
      book_1 = Book.create(title: 'Harry Potter')
      user_1 = User.create(name: 'Bobby')
      review_1 =  book_1.reviews.create(content: 'Great Book', user_id: user_1.id, rating: 4)
      review_2 =  book_1.reviews.create(content: 'Great Book 66', user_id: user_1.id, rating: 3)
      review_3 =  book_1.reviews.create(content: 'Great Book 55', user_id: user_1.id, rating: 3)

      visit(book_path(book_1))

      expect(page).to have_content(3)
    end
  end
end
