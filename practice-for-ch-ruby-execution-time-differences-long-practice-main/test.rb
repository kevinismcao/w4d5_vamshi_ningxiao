# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# my_min(list)  # =>  -5

def my_min_worst(list)
    list.each do |i|
        checked = true
        list.each do |j|
            if i > j
                checked = false
             next
            end
        end
        return i if checked == true
    
    end
 
end
            

def my_min_better(list)
    min = list.first
    list.each do |i|
        if i < min
            min = i
        end
    end
    min
end

# p my_min_worst(list)
# p my_min_better(list)



def largest_contiguous_subsum_worst(list)
    subarr = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            subarr << list[i..j]
        end
    end
    max = subarr.first.sum
    subarr.each do |ele|
        max = ele.sum if ele.sum > max
    end
    max

end

def largest_contiguous_subsum_best(list)
    maxsum = 0
    current_sum = 0
    list.each do |ele|
        current_sum += ele
        maxsum = current_sum if current_sum  maxsum



end




# list = [5, 3, -7]
# p largest_contiguous_subsum_worst(list) # => 8

# # possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum_worst(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum_worst(list) # => -1 (from [-1])