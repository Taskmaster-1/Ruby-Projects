def bubble_sort(arr)
    n = arr.length

    # Outer loop for the number of passes
    (0..n - 1).each do |i|
    # Inner loop for each pass
    (0..n - i - 2).each do |j|
        # Swap if the element found is greater than the next element
        if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        end
    end
    end

    arr
end

result = bubble_sort([4, 3, 78, 2, 0, 2])
puts result.inspect
