# What happen when you call method?

=begin
Ruby does two things when you called method:
1. Find the method. This process called `method lookup`
2. Execute the method. To do that, Ruby needs something called `self`
=end

=begin
the method lookup:
The process of method lookup ->
to find a method, Ruby goes to `receiver's` class, and from there
it climbs the `anchestors` chain until it finds the method.
=end
#example

class MyClass
  def my_method
    'my_method()'
  end
end

class MySubclass < MyClass

end

obj = MySubclass.new
p obj.my_method

=begin

rule: go one step to the right into the receiver’s class, and then go up the ancestors chain until you find the method. You can ask a class for its ancestors chain with the ancestors method
=end

p MySubclass.ancestors # => [MySubcla​ss, MyClass, Object, Kernel, BasicObject]