=begin
Class dan instance variablesnya (variable with @) tidak berhubungan sama sekali
Instance variable akan exist apabila sudah di assign value
=end

class MyClass
  def my_method
    @v = 1
  end

  def my_new_method
    @k = 2
  end
end

obj = MyClass.new
p obj.class # => MyClass
p obj.instance_variables # => empty array, because we didn't yet assign value to the object
obj.my_method # trigger method (assign value to the instance variable (@v))
p obj.instance_variables # => [:@v]
    

=begin
Selain memiliki instance variabel, objek juga memiliki method Object#method
An object contains its instance variables and a reference to a class (because every object belongs to a class, or—in OO speak—is an instance of a class)
“Objects that share the same class also share the same methods, so the methods must be stored in the class, not the object.”
=end

obj2 = MyClass.new
obj2.my_method
obj2.my_new_method
p obj2.instance_variables

=begin
`my_method` is an instance method (not just “a method”) of MyClass, meaning that it’s defined in MyClass, and you actually need an object (or instance) of MyClass to call it. 

WRAP UP:

an object’s instance variables live in the object itself, and an object’s methods live in the object’s class. That’s why objects of the same class share methods but don’t share instance variables.
=end

###################################
###################################
#############THE TRUTH ABOUT CLASS
###################################
###################################
###################################

=begin
Here is possibly the most important thing you’ll ever learn about the Ruby object model: classes themselves are nothing but objects.

Because a class is an object, everything that applies to objects also applies to classes. Classes, like any object, have their own class, called—you guessed it—Class
=end

Array.superclass # => Object​
Object.superclass # => BasicObject
BasicObject.superclass # => nil


class MetaClass

end

objMeta = MetaClass.new

puts "objMeta -> #{objMeta}"
puts "objMeta class -> #{objMeta.class}"
puts "MetaClass class -> #{MetaClass.class}"
puts "MetaClass superclass -> #{MetaClass.superclass}"
puts "Object class -> #{Object.class}"
puts "Object superclass -> #{Object.superclass} (root of hierarcy)"
puts "Class class -> #{Class.class}"
puts "Class superclass -> #{Class.superclass}"
puts "Module class -> #{Module.class}"
puts "Module superclass -> #{Module.superclass}"