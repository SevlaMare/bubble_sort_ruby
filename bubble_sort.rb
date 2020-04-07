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


def bubble_sort_by(arx)
  (0...arx.length - 1).each do |i|
    result = yield(arx[i], arx[i - 1])
    if result.positive?
      arx[i], arx[i + 1] = arx[i + 1], arx[i]
    end
  end
  arx
end




p bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
p bubble_sort_by(%w[hi hello hey by]) { |left, right| left.length - right.length }
#p bubble_sort_by(%w[b a aaa aa aaa a aa]) { |left, right| left.length - right.length }
