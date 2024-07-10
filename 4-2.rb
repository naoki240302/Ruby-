class Article

  def initialize(author, title, content)
    @author = author
    @title = title
    @content = content
  end

  def write
    puts "著書: #{@author}"
    puts "タイトル: #{@title}"
    puts "本文: #{@content}"
  end

end

author = "阿部"
title = "Rubyのすばらしさについて"
content = "Awesome Ruby!"

book = Article.new(author, title, content)
book.write