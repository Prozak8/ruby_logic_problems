class Cup
    attr_accessor :colour, :radius

    def initialize(colour, radius)
        @colour = colour
        @radius = radius
    end
end

cups = []

puts "How many cups are there?"
gets.to_i.times do |n| 
  puts "Enter Cup-#{n+1}"
  value = gets.chomp.split(" ")
  order = Integer(value[0]) rescue false 
  cups << (order ? Cup.new(value[1], (value[0].to_i)/2) : 
                   Cup.new(value[0], value[1].to_i))
end
cups.sort_by { |cup| cup.radius }.each { |cup| puts cup.colour } 

