 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
 
 input_str = "Howdy partner, sit down! How's iiiit going?"

 def substrings(input_str, dictionary)

  output_hash = Hash.new
  input_arr = input_str.downcase.gsub(/[^a-zA-Z\s]/, '').split(" ")
 
  dictionary.each do |item|
    if input_str.downcase.include?(item.downcase)
 
      output_hash[item.downcase] = 0
 
      input_arr.each do |input_arr_item|
       output_hash[item.downcase] += input_arr_item.scan(item.downcase).count
      end
     
     # The approach below failed to consider "it" appears three times in "ititit"
     #  output_hash[item.downcase] = input_arr.count { |input_arr_item| input_arr_item.include?(item.downcase) }
 
    end
  end
 
  output_hash

 end

 substrings(input_str, dictionary)