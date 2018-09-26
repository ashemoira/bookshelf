# frozen_string_literal: true

class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :name, limit: 192, null: false, default: ''
      t.integer :library_book_manage_id, null: false
      t.integer :storage, null: false, default: 50

      t.timestamps
    end
  end
end
