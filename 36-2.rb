def withdraw(balance, amount)
  fee = 110 # 手数料
  if balance >= (amount + fee)
    puts "引き落とし額：#{amount}円"
    puts "手数料：#{fee}円"
    puts "残高：#{balance - amount - fee}円"
  else
    puts "残高不足です"
  end
end

balance = 100000 # 残高
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)