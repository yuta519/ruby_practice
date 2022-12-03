class Book
  attr_accessor :title, :price

  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new('たのしいRuby', 2310)
p book
puts book.title
book.price = 2000
puts book.price
