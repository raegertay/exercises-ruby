def in_array(array1, array2)
  final_array = []
  array1.each do |s1|
    array2.each do |s2|
      unless s2.match(s1).nil?
        final_array << s1
        break
      end
    end
  end
  
  final_array.sort
end


  def decode_resistor_colors(bands)
    resistance_codes = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      gray: 8,
      white: 9
    }

    tolerance_code = {
      gold: '5',
      silver: '10',
    }

    colors = bands.split(' ').map { |color| color.to_sym }

    resistance = (resistance_codes[colors[0]].to_s + resistance_codes[colors[1]].to_s).to_i * (10**resistance_codes[colors[2]])
    if resistance >= 10**6
      resistance = "#{ sprintf("%g" ,resistance/10.0**6) }M"
    elsif resistance >= 10**3
      resistance = "#{ sprintf("%g" ,resistance/10.0**3) }k"
    else
      resistance = sprintf("%g" ,resistance)
    end

    if colors.size < 4
      return resistance + ' ohms, 20%'
    else
      return resistance + ' ohms, ' + tolerance_code[colors[3]] + '%'
    end
  end
