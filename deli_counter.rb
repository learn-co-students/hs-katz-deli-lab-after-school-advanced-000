class Deli 
attr_accessor :name, :line
  def initialize(name)
    @line =   []
    @name=name
  end 
  def line_status
    if @line.empty? == true
      puts "The line is currently empty."
    else @line.empty? == false
      puts "The line is currently:"
     line.each_with_index do |name,index|
      puts "#{index + 1}. #{name}"
      end
    end
  end
  def take_a_number(customer)
    if @line.empty? == true
      @line << customer 
      puts "Welcome, #{customer}. You are number 1 in line."
    else @line.empty? == false
    @line << customer 
     puts "Welcome, #{customer}. You are number #{@line.length} in line."
    end
  end 
  def now_serving
    if @line.empty? == true
    puts "There is nobody waiting to be served!"
    else @line.empty? == false
      puts "Currently serving #{@line.first}."
        @line.delete_at(0)
    end
  end
end
