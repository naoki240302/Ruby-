def register_data
  puts "データの登録"
end

def show_data
  puts "データの確認"
end

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    # データの登録と出力するための関数を呼ぶ
    register_data
  elsif input == 1
    # データの確認と出力するための関数を呼ぶ
    show_data
  elsif input == 2
    # アプリケーションを終了させる
    exit
  else
    puts "無効な選択肢です"
  end
  
end