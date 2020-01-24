suits = Array["h", "s", "c", "d"]
ranks = Array["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
jokers = Array["1j", "2j"]

deck = []

suits.each do |suit|
    ranks.each do |value|
        deck << "#{value}#{suit}"
    end
end

# To make 2 decks
deck += deck.clone

# Adding Joker to deck
jokers.each do |joker|
    deck << "#{joker}"
end

# Shuffle Deck
deck.shuffle!

# each player has 14 cards from deck randomly
x = 0
player1 = []

until x == 14  do

    card = deck.sample
    player1 << card
    
    deck.delete_at(deck.index(card))
    
    x +=1 
end

heartSet = []
spadeSet = []
clubSet = []
diamondSet = []
jokerSet = []

player1.each { |card|

    if player1.any? { card.include?('h') }
        then heartSet = player1.select do |card|
            player1.any? { card.include?('h') }
        end
    elsif player1.any? { card.include?('s') }
        then spadeSet = player1.select do |card|
            player1.any? { card.include?('s')}
        end
    elsif player1.any? { card.include?('c') }
        then clubSet = player1.select do |card|
            player1.any? { card.include?('c')}
        end
    elsif player1.any? { card.include?('d') }
        then diamondSet = player1.select do |card|
            player1.any? { card.include?('d')}
        end
    elsif player1.any? { card.include?('j') }
        then jokerSet = player1.select do |card|
            player1.any? { card.include?('j')}
        end
    end
}

sortedCardPlay1 = []

sortedCardPlay1 << heartSet.sort!
sortedCardPlay1 << diamondSet.sort!
sortedCardPlay1 << spadeSet.sort!
sortedCardPlay1 << clubSet.sort!
sortedCardPlay1 << jokerSet.sort!
