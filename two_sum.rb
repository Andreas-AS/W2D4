def bad_two_sum?(array, target)

    array.each_with_index do |num1, i|
        array.each_with_index do |num2, j|
          return true if num1 + num2 == target && j > i   
        end
    end
    false

end

def ok_two_sum?(array, target)
    sorted = array.sort
    potential_winners = []

    sorted.each { |num| potential_winners << num if num < target }
    potential_winners.each do |num|
        return true if potential_winners.include?(target-num)
    end

    false
end

# def ok_two_sum_bs?(array, target)
#     sorted = array.sort
#     i = 0
#     until i == target / 2
#         sorted.bsearch(i) && sorted.bsearch(target - i)
#         i += 1
#     end
# end


def hash_two_sum(array, target)
    numbers = Hash.new(0)
    array.each { |num| numbers[num] = true }
    numbers.each { |k, v| return true if numbers.has_key?(target - k)}
end