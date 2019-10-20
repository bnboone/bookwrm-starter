json.extract! book, :id, :title, :summary, :genre, :publish_date, :num_pages, :image_url, :author_id, :created_at, :updated_at
json.url book_url(book, format: :json)
