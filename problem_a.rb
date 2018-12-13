class Cup
    attr_accessor :colour, :radius

    def initialize(colour, radius)
        colour = ""
        radius = 0
    end
end

cups = []

puts "How many cups are there?"
gets.to_i.times do |n| 
  puts "Enter Cup-#{n+1} colour & radius:"
  value = gets.split " "
  print value
    if
        value[0].to_i.is_a?(Integer)
        print value
        value.first / 2
        value.reverse
        cups << Cup.new(value[0], value[1])
    end 
        cups << Cup.new(value[0], value[1])
end
    # print cups(colour).sort_by { |cup| cup.radius }