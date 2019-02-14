class Array

    def my_min1 # O(n^2)
        (0...self.length).each do |i| # O(n)
            pivot = self[i]
            sleep(0.001)
            remain = self[0...i] + self[i+1..-1] # O(n)
            sleep(0.001)
            return self[i] if remain.all? { |num| num > self[i] } # O(n)
                sleep(1)
        end
    end
    # my_min1_time = Time.now
    # time_difference1 = Time.now - my_min1_time
    # p time_difference1
    # puts "~~~~~~~"

    def my_min2 # O(n) time complexity
        smallest = self.first
        self.each do |num|
            sleep(1)
            smallest = num if num < smallest    
        end
        smallest
    end
    # my_min2_time = Time.now
    # time_difference2 = Time.now - my_min2_time

    # p time_difference2

    
    def largest_sub_sum1  #0(n^2)
        result = []
        (0...self.length).each do |idx1|
            (idx1...self.length).each do |idx2|
                subarray_result = self[idx1..idx2]
                result << subarray_result
            end
        end

        largest_sum = result[0][0]
        result.each do |arr|
            largest_sum = arr.sum if arr.sum > largest_sum
        end
        largest_sum
    end

    def largest_sub_sum2
        current = self.first
        largest = self.first
        (1...self.length).each do |i|
            current += self[i]
            largest = current if current > largest
        end
        largest
    end

end

def largest_sub_sum2(list)
    current = list.first
    largest = list.first
    (1...list.length).each do |i|
        current += list[i]
        largest = current if current > largest
    end
    largest
end

list1 = [2, 3, -6, 7, -6, 7]
list2 = [5, 3, -7]
list3 = [-5,-1,-3]

p largest_sub_sum2(list1)

p largest_sub_sum2(list2)

p largest_sub_sum2(list3)






# array = Array.new { [ 0, 3, 5, 4, -5, 10, 1, 90 ] }