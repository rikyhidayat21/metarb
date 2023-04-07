require 'test/unit'

# begin first attemp

# def to_alphanumeric(s)
#   s.gsub(/[^\w\s]/, '')
# end

# class ToAlphanumericTest < Test::Unit::TestCase
#   def test_strip_non_alphanumeric_characters
#     assert_equal '3 the Magic Number', to_alphanumeric('#3, the *Magic, Number*?')
#   end
# end

# end of first attemp

# second attemp begin
class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end

class StringExtensionsTest < Test::Unit::TestCase
  def test_strip_non_alphanumeric_characters
    assert_equal '3 the Magic Number', '#3, the *Magic, Number*?'.to_alphanumeric
  end
end
# second attemp end


# does this loop create 3 class? -> no!
# karena, kalau kelasnya udah di define, Ruby gak akan ngedefined class yang sama
# melainkan, ruby akan membuka existing class dan baru mendefinisikan / menambahkan methodnya.
3.times do
  class C
    puts "Hello world"
  end
end