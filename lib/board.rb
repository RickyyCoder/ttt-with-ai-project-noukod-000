class Board
  attr_accessor :cells
  def initialize
    @cells = Array.new(9, " ")
  end
  
  def reset!
    @cells.clear
    @cells = Array.new(9, " ")
  end
  
  def display
    puts " #{@cells[0]} " + "|" + " #{@cells[1]} " + "|" + " #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} " + "|" + " #{@cells[4]} " + "|" + " #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} " + "|" + " #{@cells[7]} " + "|" + " #{@cells[8]} "
  end
  
  def position(user_input)
    #user_input = gets.strip
    user_input = user_input.to_i - 1
    @cells[user_input]
  end
  
  def full?
    !@cells.include?(" ")
  end
  
  def turn_count
    @cells.count{ |element| element != " " }
  end
  
  def taken?(input)
    position(input) == "X" || position(input) == "O"
  end
  
  def valid_move?(input)
    input.to_i.between?(1, 9) && !taken?(input)
  end
  
  #def update(input, player)
    #if valid_move?(input)
    #  @cells[input] = player.token
   # end
 # end
  
  def update(input, player)
    if valid_move?(input)
      input = input.to_i - 1
      cells[input] = player.token
    end
  end
  
end