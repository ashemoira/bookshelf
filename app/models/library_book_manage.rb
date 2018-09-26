# frozen_string_literal: true

class LibraryBookManage < ApplicationRecord
  belongs_to :book, dependent: :destroy
  belongs_to :library, dependent: :destroy
end
