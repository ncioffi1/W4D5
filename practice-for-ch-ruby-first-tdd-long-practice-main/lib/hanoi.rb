require 'byebug'

class TowersOfHanoi

    def initialize(n)
      @pile_1 = (1..n).to_a.reverse
      @pile_2 = []
      @pile_3 = []
    end

    def play
      until won?
        render
        puts 'input two numbers that represent the pile you are taking from and moving too'
        get_move = gets.chomp.split(' ')
        move(get_move)
      end
      puts "you win!"
      return true
    end

    def move(user_move)
      pile_from, pile_to = user_move
      pile_from = get_pile(pile_from)
      pile_to = get_pile(pile_to)
      # debugger
      raise "trying to take from empty pile" if pile_from.empty?
      raise "cant put it there" if !pile_to.empty? && pile_to.last < pile_from.last

      element_to_move = pile_from.pop
      pile_to << element_to_move

    end

    def won?
      if !@pile_1.empty? || !@pile_2.empty?
        return false
      end

      if @pile_3 == @pile_3.sort.reverse
        return true
      else
        return false
      end
    end

    def get_pile(num)
      return @pile_1 if num == '1'
      return @pile_2 if num == '2'
      return @pile_3 if num == '3'
    end

    def render
      print @pile_1
      puts
      print @pile_2
      puts
      print @pile_3
      puts
    end

end
