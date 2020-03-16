require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("andrew")
author2 = Author.new("brett")
author3 = Author.new("jake")
author4 = Author.new("dan")


book1 = Book.new("origami", 200, author1)
book2 = Book.new("kanagari", 350, author2)
book3 = Book.new("shibumi", 250, author3)
book4 = Book.new("kuro-obi", 150, author1)
book5 = Book.new("nakagami", 400, author2)
book6 = Book.new("nakadashi", 300, author3)
book7 = Book.new("hakata", 150, author4)

binding.pry

puts "something"


