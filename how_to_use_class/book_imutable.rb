class Book
  attr_reader :title, :price

  def initialize(title, price)
    @title = title
    @price = price
  end
end

book = Book.new('たのしいRuby', 2310)
p book
p book.title
p book.price
