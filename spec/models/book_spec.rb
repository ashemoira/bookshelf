# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { FactoryBot.create(:book) }

  describe 'title validate checking' do
    it 'it is invalid to 193 or more characters' do
      book.title = '0' * 193
      expect(book).to be_invalid
    end

    it 'it is valid to 192 characters or less' do
      book.title = '0' * 192
      expect(book).to be_valid
    end
  end

  describe 'author validate checking' do
    it 'it is invalid to 193 or more characters' do
      book.author = '0' * 193
      expect(book).to be_invalid
    end

    it 'it is valid to 192 characters or less' do
      book.author = '0' * 192
      expect(book).to be_valid
    end
  end
end
