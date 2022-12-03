def bubble_sort(ary)
  ary.length.times do |i|
    (ary.length - 1 - i).times do |j|
      ary[j], ary[j + 1] = ary[j + 1], ary[j] if ary[j] > ary[j + 1]
    end
  end
  ary
end

# numbers = Array.new(10) { rand 100 }
# p numbers
# p bubble_sort(numbers)

def bubble_sort_mine(ary)
  ary.length.times do |i|
    next if i + 1 == ary.length

    ary.length.times do |j|
      next if j + 1 == ary.length

      ary[j], ary[j + 1] = ary[j + 1], ary[j] if ary[j] > ary[j + 1]
    end
  end
  ary
end

numbers = [2, 1, 5, 4, 3]
p bubble_sort_mine(numbers)
