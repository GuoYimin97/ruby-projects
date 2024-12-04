def caesar_cipher(input_str, number)
  input_arr = input_str.split("")
  output_arr = Array.new(input_str.length)

  input_arr.each do |item|
    if item.ord.between?(65, 90)
      if item.ord + number <= 90
        output_arr.push((item.ord + number).chr)
      else
        output_arr.push((item.ord + number - 26).chr)
      end
    elsif item.ord.between?(97, 122)
      if item.ord + number <= 122
        output_arr.push((item.ord + number).chr)
      else
        output_arr.push((item.ord + number - 26).chr)
      end
    else
      output_arr.push(item)
    end
  end

  output_str = output_arr.join
  output_str
end

caesar_cipher("What a string!", 5)