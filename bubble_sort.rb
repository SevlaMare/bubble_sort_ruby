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
# p bubble_sort([4, 3, 78, 2, 0, 2])


def bubble_sort_by(array)

  while count < array.length
    check = yield(array[i], array[i + 1])

    if check > 0
      p '3-2 = 1 left is greater'
    elsif check < 0
      p '1-3= -1 left is smaller, need shift'
      left, right = right, left
    else
      p 'they are equals'
    end
    count += 1
  end
end

# test 2
# p bubble_sort_by(["hi","hello","hey"]) do |left, right|
#   left.length - right.length
# end
# ["hi", "hey", "hello"]

# test 3
arr1 = [98, 7, 52, 9, 3, 24, 0, 16]
p bubble_sort_by(arr1) { |left, right| left.length - right.length }
