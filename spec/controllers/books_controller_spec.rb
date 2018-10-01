# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  let(:book) { FactoryBot.create(:book) }

  let(:valid_session) { {} }

  describe 'GET #show' do
    it 'returns a success response' do
      book = Book.create! valid_attributes
      get :show, params: { id: book.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      book = Book.create! valid_attributes
      get :edit, params: { id: book.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Book' do
        expect do
          post :create, params: { book: valid_attributes }, session: valid_session
        end.to change(Book, :count).by(1)
      end

      it 'redirects to the created book' do
        post :create, params: { book: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Book.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { book: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested book' do
        book = Book.create! valid_attributes
        put :update, params: { id: book.to_param, book: new_attributes }, session: valid_session
        book.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the book' do
        book = Book.create! valid_attributes
        put :update, params: { id: book.to_param, book: valid_attributes }, session: valid_session
        expect(response).to redirect_to(book)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        book = Book.create! valid_attributes
        put :update, params: { id: book.to_param, book: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested book' do
      book = Book.create! valid_attributes
      expect do
        delete :destroy, params: { id: book.to_param }, session: valid_session
      end.to change(Book, :count).by(-1)
    end

    it 'redirects to the books list' do
      book = Book.create! valid_attributes
      delete :destroy, params: { id: book.to_param }, session: valid_session
      expect(response).to redirect_to(books_url)
    end
  end
end
