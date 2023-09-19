class Triangle
  


  def initialize(a, b ,c)
   @a = a
   @b = b
   @c = c

  end

  def kind
    if @a == 0 || @b == 0 || @c == 0
      raise TriangleError.new("Triangle sides must be larger than 0.")
    elsif @a < 0 || @b < 0 || @c < 0
      raise TriangleError.new("Triangle sides cannot be negative.")
    elsif @a + @b <= @c || @b + @c <= @a || @a + @c <= @b
      raise TriangleError.new("Triangle violates the triangle inequality.")
    elsif @a == @b && @b == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    elsif @a != @b && @a != @c && @b != @c
      :scalene
    end
  end

    class TriangleError < StandardError
      def initialize(message)
        super(message)
    end
  end

  

end
