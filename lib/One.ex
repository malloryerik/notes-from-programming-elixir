defmodule One do
    def greet() do
        player = IO.gets("Welcome to ONE CARD wooo!! \n What's your name?  ")
        IO.puts "Hi, #{player}, are you ready to rock the cards?"
    end

    deck = Cards.create_deck()

    # S -> Spades
    # C -> Clubs
    # H -> Hearts
    # D -> Diamonds
    # A 2 3 4 5 6 7 8 9 10 J Q K
    # CJ, BJ
    # 3D, 2H, 6S, AH, QD, CJ
    
    
    def suits() do
        IO.puts("♣")
        IO.puts("🂹")
    end

    
    
end  # FINITO