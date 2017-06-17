=begin
- インスタンスを作れない
- 継承ができない
=end
=begin
module Hello
  VERSION = "1.0"

  def Hello
    puts "hello"
  end
end

p Hello::VERSION

include Hello
p VERSION
=end

=begin
module Math
  def add(x, y)
    x + y
  end
  def average(x, y)
    (x + y) / 2
  end

  module_function :add, :average
end

module SumModule
  def debug()
    puts "sum module debug"
  end
end

class TestModule
  include Math
  include SumModule

  def showAdd(x,y)
    result = add(x,y)
    print "add:", x, " and ", y, " is ", result, "\n"
  end

  def showAverage(x,y)
    result = average(x,y)
    print "average:", x, " and ", y, " is ", result, "\n"
  end

  def showDebug()
    debug
  end
end

test = TestModule.new
test.showAdd(10, 8)
test.showAverage(100, 50)

p TestModule.ancestors
test.showDebug

puts Math.average(70, 40)


# 代入演算子
# a = a + 1 → a++ rubyはインクリメント演算子は禁止
a = 1
a += 1

# b = b * 2
b = 1
b *= 2

# インクリメント用のメソッド
a = 1
print "a=",a.succ


# 論理演算子
# or = 条件1 || 条件2
# and = 条件1 && 条件2
a = 1
b = 1
if(a != nil && b != nil)
  puts a + b
end

=end


# 条件演算子
a = 4
b = 8
p a > b ? a : b

# 範囲演算子
p (1..5).to_a
p (1...5).to_a

sum = 0
for i in 5..10
  sum += i
end
puts "sum:",sum
