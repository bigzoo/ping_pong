class Fixnum
  define_method(:ping_pong) do
    numbers = Array.new()
    numbers = (1..self).to_a
    numbers.each() do |number|
        numbers.map! { |number| number.%(15).eql?(0) ? 'pingpong' : number }
        numbers.map! { |number| number.%(3).eql?(0) ? 'ping' : number }
        numbers.map! { |number| number.%(5).eql?(0) ? 'pong' : number }
    numbers
  end
end
end
