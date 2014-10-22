require 'pp'

class MyString
  def format(string)
    string.gsub!(/\W/, '')
    new_string = ""
    string.scan(/.{1,5}/).each do |s|
      if s.length < 5
        y = s.concat("X"*(5-s.length))
        new_string.concat(y)
      else
        new_string.concat(s + " ")
      end
    end
    new_string.upcase!
  end
end


class Deck
  def initialize
    @deck = [*1..52, 'A', 'B']
  end

  def cards
    p @deck
  end


  def move(card, spaces)
    index = @deck.index(card)
    @deck.delete_at(index)
    if index + spaces <= 53
      @deck.insert((index + spaces), card)
    else
      @deck.insert((spaces - (54-index)), card)
    end
    p @deck
  end
end


Deck.new.move("A", 0)


string = "Now this is a story all about how..."
MyString.new.format(string)