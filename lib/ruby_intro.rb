# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    s = 0
    arr.each {|x| s += x}
    return s
end

def max_2_sum arr
    sum = 0
    size = arr.size
    if size == 0
        return 0
        elsif size == 1
        return arr.at(0)
        else
        sorted = arr.sort
        sum = sorted.at(size - 1) + sorted.at(size - 2)
    end
end

def sum_to_n? arr, n
    if arr.size < 2
        return false
    else
    l = 0
    r = arr.size - 1
    sorted = arr.sort
    while l < r
        if sorted.at(l) + sorted.at(r) == n
            return true
            elsif sorted.at(l) + sorted.at(r) < n
            l += 1
            else
            r -= 1
            end
        end
    return false
    end
end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
    (s[0] =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
    if s.size == 0 || s =~ /[^01]/
        return false
    end
    return (s == '0') || s.end_with?('00')
end

# Part 3

class BookInStock
    
    def initialize isbn, price
        if isbn.size == 0 || price <= 0
            raise ArgumentError, 'Not valid'
            end
        @isbn = isbn
        @price = price
    end
    
    def isbn
        @isbn
    end
    
    def isbn=(code)
        @isbn = code
    end
    
    def price
        @price
    end
    
    def price=(amount)
        @price = amount
    end
    
    def price_as_string
        return "$%.2f" % @price
    end
    
end
