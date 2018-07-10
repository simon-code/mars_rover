class Rover
  attr_reader :x, :y, :direction


  #object state en este caso su ubicacion

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end


#object behaviour en este caso como se mueve y gira

  def move
    case @direction
      when 'N'
        @y += 1
      when 'S'
        @y -= 1
      when 'W'
        @x -= 1
      when 'E'
        @x += 1
    end
  end

  def turn_left
    case @direction
    when 'N'
      @direction = 'W'
    when 'W'
      @direction = 'S'
    when 'S'
      @direction = 'E'
    when 'E'
      @direction = 'N'
    end
  end

  def turn_right
    case @direction
    when 'N'
      @direction = 'E'
    when 'E'
      @direction = 'S'
    when 'S'
      @direction = 'W'
    when 'W'
      @direction = 'N'
    end
  end

end
