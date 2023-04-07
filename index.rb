class A
  p "A"
end

class B < A
  p "B < A"
  def my_method
    p "my_method"
  end
end

class C < B
  p "C < B"
end

class D < C
  p "D < C"
end

obj = D.new
obj.my_method