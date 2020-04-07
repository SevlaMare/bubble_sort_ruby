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

p bubble_sort([4, 3, 78, 2, 0, 2])


def bubble_sort_by(array)
  i = 0
  while i < array.length-1
    if yield(array[i], array[i-1]) > 0
      array[i], array[i + 1] = array[i + 1], array[i]
    end
    i += 1
  end
  p array
end


bubble_sort_by(["hi","hello","hey"]) { |left, right| left.length - right.length }
# ["hi", "hey", "hello"]
