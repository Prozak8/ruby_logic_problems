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
  value = gets.chomp.split(" ")
  order = Integer(value[0] / 2) rescue false 
  cups << (order ? Cup.new(value[0].to_i, value[1]) : Cup.new(value[1], value[1].to_i))
end
cups.sort_by { |cup| cup.radius }.each { |cup| puts cup.colour } 
