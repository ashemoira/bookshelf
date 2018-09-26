# frozen_string_literal: true

class Book < ApplicationRecord
  validates :title, length: { maximum: 192 }, presence: true
  validates :author, length: { maximum: 192 }, presence: true

  has_many :library, through: :library_book_manages
end
