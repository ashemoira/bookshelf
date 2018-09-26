# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Books', type: :request do
  let(:book) { FactoryBot.create(:book) }

  def before_create_book
    book
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get books_url, params: {}
      expect(response.status).to eq 200
    end

    it 'include book title and author' do
      before_create_book
      get books_url, params: {}
      expect(response.body).to include book.title
    end
  end
end
