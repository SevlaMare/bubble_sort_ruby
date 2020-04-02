def bubble_sort(array)
  trigger = true
  while trigger
    i = 0

    # if no swap, so is already sorted
    trigger = false

    # each lap do (n-1)
    # because last element it's already sorted
    n = 1
    while i < array.length - n
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]

        # if one swap in the whole lap, start again
        trigger = true
      end
      i += 1
    end
    n -= 1
  end
  array
end

# test 1
p bubble_sort([4, 3, 78, 2, 0, 2])




def bubble_sort_by(array)
  for i in array
    left = array[i]
    right = array[i + 1]
    pair = yield(left, right)

    if pair < 0
      # sorted, left is smaller
      return -1
    elsif pair > 0
      # not sorted, right is smaller
      return 1
    elsif pair == 0
      # nothing to do, they are equals
      return 0
    end
  end

end



# test 2
p bubble_sort_by(["hi","hello","hey"]) do |left, right|
  left.length - right.length
end
# ["hi", "hey", "hello"]
