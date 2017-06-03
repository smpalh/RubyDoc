=begin
Object.Method(p1,p2...)

def hello()
  puts "hello"
end

hello()
hello #parameterが一つもない場合は（）は省略可
=end

def hello(mes1,mes2="hoge")
  print "hello:",mes1," and ",mes2,"\n"
end

hello("hoge","hogehoge")
hello("suzuki")