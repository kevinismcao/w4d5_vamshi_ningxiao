def naive_windowed_max_range(arr, window_size) #quadratic time complexity
    newarr = []
    (0..arr.length-window_size).each do |i|
        newarr << arr[i...i+window_size]
    
    end
    current_max_range = 0
    newarr.each do |subarr|
        max_range = subarr.max - subarr.min
        current_max_range = max_range if current_max_range < max_range
    end
    current_max_range
end

class MyQueue 
    def initialize 
        @store = []
    end

    def size 
        @store.length
    end 

    def enqueue(value) 
        @store.push(value)
    end 

    def dequeue 
        @store.shift
    end 
    
    def peek 
        @store.last 
    end 

    def empty?
        @store.empty? 
    end

end

class MyStack 
    def initialize 
        @store = []
    end

    def peek 
        @store.last 
    end 

    def size 
        @store.length 
    end 

    def empty?
        @store.empty?
    end 

    def pop 
        @store.pop 
    end 

    def push (value)
        @store.push(value)
    end

end

class StackQueue 

    def size 

    end 

    def empty?

    end 

    def enqueue

    end

    def dequeue

    end 

end





p naive_windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p naive_windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p naive_windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p naive_windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


# windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


# windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8


# windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
# windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
# windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
# windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8