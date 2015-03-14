# Write your code here.
class Deli
  attr_accessor :name, :line
  def initialize(name)
    self.name = name
    self.line = []
  end

  def take_a_number(name)
    self.line << name
    puts "Welcome, #{name}. You are number #{self.line.index(name) + 1} in line."
  end

  def line_status
    if self.line.length == 0
      puts "The line is currently empty."
    else
      puts "The line is currently:"
      self.line.each_with_index do |person, num|
        puts "#{num + 1}. #{person}"
      end
    end
  end

  def now_serving
    if self.line.length == 0
      puts "There is nobody waiting to be served!"
    else
      puts "Currently serving #{self.line.first}."
      self.line.delete(self.line.first)
    end
  end
end