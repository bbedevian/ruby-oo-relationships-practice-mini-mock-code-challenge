class Author

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        Author.all << self
    end

    def self.all # should return all of the authors
        @@all
    end

    def books #should return all of the books an author has written
        Book.all.select{|book| book.author == self}
    end

    def write_book(title, word_count) #should take arguments of a title and word count and make a new Book instance associated with this author
        Book.new(title, word_count, self)
    end

    def total_words # should return the total number of words that author has written across all of their authored books.
        books.map{|book| book.word_count}.sum 
    end

    def self.most_words #should return the author instance who has written the most words
        most_words_author = nil
        most_words_count = 0
        Author.all.each do |author|
            if author.total_words > most_words_count
                most_words_author = author
                most_words_count = author.total_words
            end
        end
        most_words_author
    end
end
