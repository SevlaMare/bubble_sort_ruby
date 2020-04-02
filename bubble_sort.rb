array = [4,3,78,2,0,2]
resp = [0,2,2,3,4,78] # sorted
trigger = true

while trigger
  for i in 0..array.length-1
    if i < array.length-1
      if array[i] > array[i+1]
        array[i+1], array[i] = array[i], array[i+1]
      end
    end
  end
  # if not swap in a pass,
  # trigger should become false
end




# check
p array
if array == resp
  puts 'correct'
end

# second optimization
# the most right element will be sorted each pass
# next pass only get unsorted elements, loop over until (n-1)
