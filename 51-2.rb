def register_book
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i

  book = { author: author, title: title, price: price }
  @books << book

end

def show_books(books)
  puts "見たい番号を入力してください"
  select = gets.to_i
  show_detail(books[select])
end

def show_detail(book)
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

@books = []

while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    register_book
  when 1
    show_books(@books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end