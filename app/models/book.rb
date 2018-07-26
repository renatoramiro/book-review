class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :number_of_pages, presence: true
  validates :review, presence: true

  has_many :comments
  has_many :book_comments, through: :comments, source: :reader

  has_many :bookcases
  has_many :readers, through: :bookcases
end
