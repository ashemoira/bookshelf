# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :book, through: :library_book_manages
end
