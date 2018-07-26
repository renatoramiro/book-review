class Reader < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  has_many :bookcases
  has_many :books, through: :bookcases
end
