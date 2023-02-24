def bad_two_sum?(arr, target_sum) #quatratic
    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end
    false
end

def okay_two_sum?(arr,target_sum) #linearithmic
    sorted_arr = arr.sort
    midpoint = arr.length/2
    return true if arr[midpoint] + arr[midpoint+1] == target_sum || arr[midpoint] + arr[midpoint-1] == target_sum

    left = arr[0...midpoint]
    right = arr[midpoint+1...arr.length]
    if arr[midpoint] + arr[midpoint-1] > target_sum
        result = okay_two_sum?(left,target_sum)
        return result
    elsif
        arr[midpoint] + arr[midpoint+1] < target_sum
        result = okay_two_sum?(right,target_sum)
        return result
    end
    false
end

def good_two_sum?(arr, target_sum) #linear
   hash = {}
   arr.each do |ele|
        diff = target_sum - ele
        if hash[ele] 
            return true
        else
            hash[diff] = true
        end
    end
    false
end



def two_sum?(arr, target_sum)
    # your code here...
end

arr = [0, 1, 5, 7]
two_sum?(arr, 6) # => should be true
two_sum?(arr, 10) # => should be false
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be falsetwo_sum?

p good_two_sum?(arr, 6) # => should be true
p good_two_sum?(arr, 10) # => should be falsetwo_sum?
