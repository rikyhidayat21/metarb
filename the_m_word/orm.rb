class Entity
  attr_reader :table, :ident

  def initialize(table, ident)
    @table = table
    @ident = ident
    Database.sql "INSERT INTO #{@table} (id) VALUES #{@ident}"
  end

  def set(col, val)
    Database.sql "UPDATE #{@table} SET #{col}='#{val}' WHERE id=#{@ident}"
  end

  def get(col)
    Database.sql ("SELECT #{col} FROM #{@table} WHERE id=#{@ident}")[0][0]
  end
end

class Movie < Entity
  def initialize(ident)
    super "movies", ident
  end

  def title
    get "title"
  end

  def title=(value)
    set "title", value
  end

  def director
    get "director"
  end

  def director=(value)
    set "director", value
  end
end

movie = Movie.new(1)
movie.title = "Supertramp"
movie.director = "Rb"

p movie

# METAPROGRAMMING COMES => Metaprogramming is writing code that manipulates language constructs at runtime.
# we don't need to write all of that in, active record do that

class Movie < ActiveRecord::Base
end

=begin
use the introspection
class Movie will be mapped to the table `movies`
=end