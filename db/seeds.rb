# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#authors = [{ fname: "Mary", lname: "Shelley" , books: [], book_ids: [] }, { fname: "Mary", lname: "Shelley" , books: [], book_ids: [] }]

books = [{ title: "Frankenstein", author_id: "Mary Shelley" }, { title: "Infinite Jest", author_id: "David Foster Wallace" }, { title: "The Pale King", author_id: "David Foster Wallace" }]

#
## create author records from books
#
books.map{|book| book[:author_id] }.uniq.each{|author|
  author_name = author.split(" ",2)
  Author.create({ fname: author_name[0], lname: author_name[1] })
}

puts "\n===\n"
Author.all.each{|author|
  p author
  puts "\n===\n"
}



#
## create author records from books
#
books.each{|book|
  @author_name_from_book = book[:author_id].split(" ",2)
  @author_record = Author.where(fname: @author_name_from_book[0]).where(lname: @author_name_from_book[1])

  # create book record
  @book = Book.create({ title: book[:title], author_id: @author_record[0].id })

  # update author record
  @author_record[0].books << @book#.title
  @author_record[0].book_ids << @book.id
}

puts "==="
Book.all.each{|book|
  p book
  puts "==="
}
