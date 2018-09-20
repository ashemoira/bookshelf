# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, limit: 192, null: false, default: ''
      t.string :author, limit: 192, null: false, default: ''
      t.integer :genre
      t.integer :category
      t.date :publication_date
      t.integer :page

      t.timestamps
    end
  end
end
