class Book
  attr_reader :title, :price

  def initialize(title, price)
    @title = title
    @price = price 
  end

end

book = Book.new("静かなる人の戦略書", "2000")
puts book.title
puts book.price