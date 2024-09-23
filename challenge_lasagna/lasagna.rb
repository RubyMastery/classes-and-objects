class Lasagna
  attr_accessor :layers, :minutes_in_oven

  EXPECTED_MINUTES_IN_OVEN=40

  def remaining_minutes_in_oven(minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    layers * 2
  end

  def total_time_in_minutes(number_of_layers: layers, actual_minutes_in_oven: minutes_in_oven)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

puts "Digite quantas camadas tem sua lasanha:"
layers = gets.chomp.to_i

puts "Digite o tempo em minutos no forno"
minutes_in_oven = gets.chomp.to_i

# lasagna = Lasagna.new(layers, minutes_in_oven)

puts "Esse é o tempo no forno:"
puts Lasagna.new.remaining_minutes_in_oven(minutes_in_oven)
puts "Esse é o tempo de preparação:"
puts Lasagna.new.preparation_time_in_minutes(layers)
puts "Esse é o tempo total:"
puts Lasagna.new.total_time_in_minutes(number_of_layers: layers, actual_minutes_in_oven: minutes_in_oven)