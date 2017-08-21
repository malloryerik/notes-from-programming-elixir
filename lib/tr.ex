defmodule Z do
    
    def hello do
        IO.puts "Try this on eofr size."
    end

    def madness(x, y) do
        
        swap = fn { a, b } -> { b, a } end
        
        swap.({x, y})
    end
end