class Book
  attr_reader :title, :price

  def initialize(title, price)
    @title = title
    @price = price
  end

end

book = Book.new("ライ麦畑", "2000")
puts book.title
puts book.price