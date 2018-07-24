class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :number_of_pages, presence: true
  validates :review, presence: true
end
