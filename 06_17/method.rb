=begin
Object.Method(p1,p2...)

def hello()
  puts "hello"
end

hello()
hello #parameterが一つもない場合は（）は省略可

# デフォルト引数
def hello(mes1,mes2="hoge")
  print "hello:",mes1," and ",mes2,"\n"
end

hello("hoge","hogehoge")
hello("suzuki")
hello

# キーワード引数
def total(subtotal:1000, tax:80, discount:100)
  return subtotal + tax - discount
end

p total
p total(subtotal:1500)
p total(discount:200)
p total(discount:300, subtotal:3000, tax:200)


# version2.1から対応
def total(subtotal:, tax:, discount:100)
  subtotal + tax - discount # returnは省略可
end

p total(subtotal:1000, tax:80)

def max(a,b)
  if a > b
    a
  else
    b
  end
end

p max(10,5)


# 三項演算子
def max(a,b)
  a > b ? a : b
end

p max(10,5)


# 可変引数
def output(*args)
  p args
end

output("hoge","hoge")
output("hoge","hoge","hoge")


def output(mes1, *mes2, mes3)
  p [mes1, mes2, mes3]
end

output("hoge1","hoge2","hoge3")
output("hoge1","hoge2","hoge3","hoge4")
output("hoge1","hoge2","hoge3","hoge4","hoge5")
=end


# クラス
class Book
  @@book_count = 0 # クラス変数

  attr_accessor :title # 読み書き
  # attr_reader :title # 読み込み
  # attr_writer :title # 書き込み

  # # getter
  # def title
  #   @title
  # end

  # # setter
  # def title=(value)
  #   @title = value
  # end


  # イニシャライザ（コンストラクタ）
  def initialize(title = "book")
    @title = title # インスタンス変数は先頭@
    @@book_count += 1
  end

  public # 以降下はすべてpublic

  # メソッド(インスタンスメソッド)
  def debug()
    # puts "title:#{@title}"
    puts "title:#{self.title}" # @titleと同じ
  end

  public :debug # debugメソッドをpublic

  # メソッド（クラスメソッド）
  def Book.count
    @@book_count
  end
end


class Manga < Book
  alias output_debug debug # エイリアス指定

  def initialize()
    #@title = "hello"
    super("child")
  end
end

manga = Manga.new
class << manga # 特異クラス
  def mangaPrint()
    puts "manga print"
  end
end
manga.mangaPrint

manga.debug
manga.output_debug

p Manga.ancestors
p Manga.superclass











# インスタンス生成（book1）
book1 = Book.new("hoge")
book1.debug
p book1.title
book1.title="hogehoge"
p book1.title

print "count:",Book.count, "\n"

# インスタンス生成（book2）
book2 = Book.new
book2.debug

print "count:",Book.count, "\n"

