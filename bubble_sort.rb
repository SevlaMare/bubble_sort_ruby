def bubble_sort(array)
  trigger = true
  n = 1
  while trigger
    # if no swap, so is already sorted
    trigger = false

    # each lap do (n-1)
    # because last element it's already sorted

    (0...array.length - n).each do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]

      # if one swap in the whole lap, start again
      trigger = true
    end
    n += 1
  end
  array
end

def bubble_sort_by(array)
  trigger = true
  n = 1
  while trigger
    trigger = false

    (0...array.length - n).each do |i|
      next unless yield(array[i], array[i + 1]).positive?

      array[i], array[i + 1] = array[i + 1], array[i]

      trigger = true
    end
    n += 1
  end
  array
end


p bubble_sort([3,1,2])
p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
