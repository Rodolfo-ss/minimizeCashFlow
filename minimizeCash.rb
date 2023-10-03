def make_change(number, *coin_values)
    coin_values.empty? ? cents = [50, 20, 10, 5, 2, 1] : cents = coin_values.flatten
    rest = []
    if number > 0
      cents.each do |c|
        while c <= number
          number -= c
          rest << c
        end
      end
    else
      puts "Negative value!"
    end
    print rest.flatten
  end
  
  make_change(14, [10, 7, 1])