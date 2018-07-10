require_relative 'mars_rover'

class Mission_control

  def initialize
    @intructions
  end

  def read_instruction(rover)
    puts "Give me Orders"
    @instructions = gets.chomp
    values = @instructions.split("")
      values.each do |x|
        if x == 'M'
          rover.move
        elsif x == 'L'
          rover.turn_left
        elsif x == 'R'
          rover.turn_right
        else
            puts "That is NOT a valid command"
        end
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

#print out new location of the rovers
puts "Rover 1 is now at #{rover1.y}, #{rover1.x}, #{rover1.direction}"
puts "Rover 2 is now at #{rover2.y}, #{rover2.x}, #{rover2.direction}"
