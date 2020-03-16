class Book
    attr_reader :title, :word_count, :author
    @@all = []

    def initialize(title, word_count, author)
        @title = title
        @word_count = word_count
        @author = author
        Book.all << self
    end

    def self.all 
        @@all 
    end
end
