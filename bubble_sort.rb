def bubble_sort(array)
  trigger = true
  while trigger
    # if no swap, so is already sorted
    trigger = false

    # each lap do (n-1)
    # because last element it's already sorted
    n = 1
    (0...array.length - n).each do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]

      # if one swap in the whole lap, start again
      trigger = true
    end
    n -= 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])

def bubble_sort_by(array)
  trigger = true
  while trigger
    trigger = false

    n = 1
    (0...array.length - n).each do |i|
      next unless yield(array[i], array[i + 1]).positive?

      array[i], array[i + 1] = array[i + 1], array[i]

      trigger = true
    end
    n -= 1
  end
  array
end

p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
p bubble_sort_by(%w[hi hello hey by]) { |left, right| left.length - right.length }
p bubble_sort_by(%w[b a aaa aa aaa a aa]) { |left, right| left.length - right.length }
