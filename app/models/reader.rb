class Reader < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_many :bookcases
  has_many :books, through: :bookcases

  has_many :comments
  has_many :reader_comments, through: :comments, source: :book
end
