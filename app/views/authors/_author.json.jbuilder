json.extract! author, :id, :fname, :lname, :books, :book_ids, :created_at, :updated_at
json.url author_url(author, format: :json)
