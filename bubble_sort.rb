l1 = [4, 3, 78, 2, 0, 2]

trigger = true
while trigger
  i = 0

  # if no swap, so is already sorted
  trigger = false

  while i < l1.length - 1
    if l1[i] > l1[i + 1]
      l1[i], l1[i + 1] = l1[i + 1], l1[i]

      # if one swap in the whole lap
      trigger = true
    end

    i += 1
  end
  p l1 # final form after lap
end
