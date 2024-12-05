def bubble_sort(input_arr)
  
  if_finished = false
  smaller_number = nil
  larger_number = nil

  while if_finished == false do
    
    swap_count = 0

    for i in 0..(input_arr.length-2)
      if input_arr[i] > input_arr[i+1]
        smaller_number = input_arr[i+1]
        larger_number = input_arr[i]
        input_arr[i] = smaller_number
        input_arr[i+1] = larger_number
        swap_count += 1
      end
    end
    
    if swap_count == 0
      if_finished = true
    end

  end

  return input_arr

end

# input_arr = [4,3,78,2,0,2, 7749, -13, 126, 77, -111]
# p bubble_sort(input_arr)