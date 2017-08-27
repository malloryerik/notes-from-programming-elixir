defmodule Z do
    
    def hello do
        IO.puts "Try this on eofr size."
    end

    def madness(x, y) do
        
        swap = fn { a, b } -> { b, a } end
        
        swap.({x, y})
    end

    def list_concat_swap(a, b) do
        b ++ a
    end
    
    def conli(a, b) do
        [c, d] = a
        [e, f] = b
        [f, c, e, d]
    end
    
        defmodule Fact do 
            
                def fact(0), do: 1
                def fact(n), do: n * fact(n - 1)
        
        end

    def pair_tuple_to_list({a, b}) do
        [a, b]
    end

    def open_file(file) do
        handle_open = fn
            {:ok, file} -> "Read data: #{IO.read(file, :line)}"
            {_, error} -> "Error: #{:file.format_error(error)}"
        end
        IO.puts handle_open.(File.open(file))
    end 


    def fizzbuzz(n1, n2, n3) do
      
      fzzbzz = fn
        (0, 0, _) -> IO.puts "FizzBuzz!"
        (0, _, _) -> IO.puts "Fizz!" 
        (_, 0, _) -> IO.puts "Buzz!"
        (_, _, c) -> IO.puts c
      end
      
      fzzbzz.(n1, n2, n3)
    end

    
    def callz(name) do
      hihi = &(IO.puts(&1))
      # fname.(arg1)
      hihi.(name)
    end 

    def ands(fnc \\ "a") do
      annie = fn 
        "a" -> Enum.map [1, 2, 3, 4], &(&1 + 2) 
        "b" -> Enum.each [1, 2, 3, 4], &(IO.inspect(&1)) 
        "Joey" -> IO.puts("Hi there, Jo")
      end
      annie.(fnc)
    end

    def triple(n), do: n * 3

    # Recursive factorial
    def fact(0), do: 1
    def fact(n), do: n * fact(n - 1)
    

    # Guard Clause -- when 
    def printme(name) when name in ["jo", "moe", "sticks"] do
      IO.puts(name)
    end

    def mynames() do
      ["jo", "moe", "sticks"]
    end 

    def putmynames() do
      list = mynames()
      list 
        |> Enum.shuffle()
        |> Enum.map( &(IO.puts "Greetings #{&1}" ) )
    end

    # somenames = Z.mynames()


    def printit(name, namelist) when name in [namelist] do
      IO.puts(name)
    end

    # recursively get length of list
    def len([]),               do: 0
    def len([ _head | tail ]), do: 1 + len(tail)

    # recursively square lists
    def square([]),              do: []
    def square([ head | tail ]), do: [ head*head | square(tail)]

    def add1([]),              do: []
    def add1( [head | tail ]), do: [ head+1 | add1(tail) ]

    # homemade map function  // Call named functions like: Z.map([1,2,4], &Z.triple/1)
    def map([], _func),             do: []
    def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

    # homemade reduce-style sum function
    # accumulator is in the params!
    def sum(a, b \\ 0) # header, because multiple clauses and a default arg 
    def sum([], total),              do: total
    def sum([ head | tail ], total), do: sum(tail, total+head)
      # tail is new first arg (so, recursion) and add head to total

      # without accumulator
    def sum2([]),              do: 0
    def sum2([ head | tail ]), do: head + sum2(tail)

    def reduce([], value, _)                 do
      value
    end
    def reduce([ head | tail ], value, func) do
      reduce(tail, func.(head, value), func) 
    end

    def swap([]),              do: []
    def swap([ a, b | tail ]), do: [b, a | swap(tail)]
    def swap([_]),             do: raise "Swap requires a list with even elements."

    def add_pairs([]),            do: []
    def add_pairs([a, b | tail]), do: [ a + b | add_pairs(tail)]
    def add_pairs([_]),           do: raise "Gotta be evenly numbered lists for this, yo."


    # problematic
    def span(to, to), do: [to]
    def span(from, to), do: [from | span(from + 1, to)]

    def span2(to, to), do: [ to ]
    def span2(from, to) when from < to, do: [ from | span(from + 1, to) ]

end  # end Z module  

