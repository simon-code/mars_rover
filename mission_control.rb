require_relative 'mars_rover'

class Mission_control

  def initialize
    @intructions
  end

  def read_instruction(rover)
    puts "Give me Orders"
    @instructions = gets.chomp
    values.each do |x|
      case x
      when x == 'M'
        rover.move
      when x == 'L'
        rover.turn_left
      when x == 'R'
        rover.turn_right
      else
        puts "That is NOT a valid command"
      end
    end

end

#rovers
rover1 = Rover.new(1, 1, 'N')
rover2 = Rover.new(5, 5, 'S')

#users
user1 = Mission_control.new
user2 = Mission_control.new

#instructions used on the rovers
user1.read_instruction(rover1)
user2.read_instruction(rover2)
