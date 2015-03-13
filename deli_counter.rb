class Deli
    
    attr_accessor :name, :line

    def initialize(name)
        @name = name
        @line = []
    end

    def take_a_number(customer_name)
        @line << customer_name
        puts "Welcome, #{customer_name}. You are number #{@line.rindex(customer_name) + 1} in line."
    end

    def now_serving
        if @line==[]
            puts "There is nobody waiting to be served!"
        else
            puts "Currently serving #{@line[0]}."
            @line.shift
        end
    end
    
    def line_status
        if @line==[]
            puts "The line is currently empty."
        else
            puts "The line is currently:"
            @line.each do |word|
            puts "#{@line.rindex(word)+1}. #{word}"
            end
        end
    end

end