json.extract! book, :id, :title, :author, :genre, :category, :publication_date, :page, :created_at, :updated_at
json.url book_url(book, format: :json)
