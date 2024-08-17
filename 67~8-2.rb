def post_item(a_cart)
  cart = {}
  puts "商品名を入力してください："
  cart[:item_name] = gets.chomp
  puts "値段を入力してください："
  cart[:price] = gets.to_i
  puts "個数を入力してください："
  cart[:num] = gets.to_i

  line = "---------------------------"

  puts "商品名 : #{cart[:item_name]}"
  puts "値段 : #{cart[:price]}"
  puts "個数 : #{cart[:num]}"
  puts "合計金額 : #{cart[:price] * cart[:num]} "

  a_cart << cart

  return a_cart
  
end
  
def check_items(a_cart)
  line = "---------------------------"
  sum_price = 0
  a_cart.each_with_index do |cart, index|
    puts index
    puts "商品名 : #{cart[:item_name]}"
    puts "値段 : #{cart[:price]}"
    puts "個数 : #{cart[:num]}"
    puts "合計金額 : #{cart[:price] * cart[:num]} "
    puts line
    sum_price += cart[:price] * cart[:num]
  end

  puts "合計金額 : #{sum_price}"
  puts line

  puts "買い物を続けますか？"
  puts "[0]:買い物を続ける"
  puts "[1]:お会計をする"
  select = gets.to_i

  if select == 0
    post_item(a_cart)
  elsif select == 1
    account(sum_price)
  else
    puts "無効な番号です"
    return true
  end

end

def end_program
  exit
end

def exception
  puts "入力された値は無効な値です"
end

def account(sum_price)
  puts "お支払い金額を入力して下さい"
  input = gets.to_i
  if input < sum_price
    puts "#{sum_price - input}円不足してます"
    puts "再度入力して下さい"
    account(sum_price)
  elsif input > sum_price
    puts "お釣りは#{input - sum_price}円です"
    puts "ありがとうございました"
    exit
  elsif input == sum_price
    puts "丁度の支払いになります"
    puts "ありがとうございました"
    exit
  end
end

cart = []

while true do
  puts "商品数: #{cart.length}"
  puts "[0]商品をカートに入れる"
  unless cart.empty? 
    puts "[1]カートを確認する"
  end
  puts "[2]アプリを終了する"
  input = gets.to_i

  if input == 0 then
    cart = post_item(cart)
  elsif input == 1 then
    check_items(cart)
  elsif input == 2 then
    end_program
  else
    exception
  end
end