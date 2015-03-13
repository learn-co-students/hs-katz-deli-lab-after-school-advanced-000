# Write your code here.

class Deli
  attr_accessor :name, :line
  def initialize(name)
    @name = name
    @line = []
  end

  def take_a_number(customer)
    @line << customer
    puts "Welcome, #{customer}. You are number #{@line.length} in line."
    return @line.length
  end

  def now_serving
    if @line != []
      puts "Currently serving #{@line.first}."
      @line.shift
    else
      puts "There is nobody waiting to be served!"
    end
  end

  def line_status
    counter = 1
    if @line == []
      puts "The line is currently empty."
    else
      puts "The line is currently:"
      @line.each_with_index{|value, index| puts "#{index + 1}. #{value}"}
    end
  end
end