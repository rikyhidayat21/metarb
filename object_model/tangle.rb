module Printable
  def print
    "print at printable"
  end
  
  def prepare_cover
    "preparing cover"
  end
end

module Document
  def print_to_screen
    prepare_cover
    format_for_screen
    print
  end

  def format_for_screen
    "formatting for screen"
  end

  def print
    "print at Document"
  end
end

class Book
  include Document
  include Printable
end

b = Book.new
p b.print_to_screen # => print at printable
p Book.ancestors # [Book, Printable, Document, Object, Kernel, BasicObject]