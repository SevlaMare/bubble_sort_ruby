l1 = [4, 3, 78, 2, 0, 2]
# l2 = [0,2,2,3,4,78] # sorted

# trigger = true
# while trigger
#   for i in (0...l1.length-1)
#     p i
#   end
#   p "finish lap"
# end

# l1 = [4,3,78,2,0,2]
# l1 = [3, 4, 2, 0, 2, 78]
# l1 = [3, 2, 0, 2, 4, 78]
# l1 = [2, 0, 2, 3, 4, 78]

i = 0
while i < l1.length - 1
  p l1[i]
  l1[i], l1[i + 1] = l1[i + 1], l1[i] if l1[i] > l1[i + 1]
  i += 1
end

p l1
