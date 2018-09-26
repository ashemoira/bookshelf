# frozen_string_literal: true

class CreateLibraryBookManages < ActiveRecord::Migration[5.2]
  def change
    create_table :library_book_manages do |t|
      t.integer :book_id, null: false
      t.integer :library_id, null: false

      t.timestamps
    end
  end
end
