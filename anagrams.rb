# anagram?("gizmo", "sally")    #=> false
# anagram?("elvis", "lives")    #=> true

def first_anagrams(string1, string2)
    anagrams = []

    array = string1.split("").permutation.to_a
    
    array.each { |stringed_array| anagrams << stringed_array.join("") }
    
    anagrams.include?(string2)
    
end

def second_anagram?(string1, string2)
    return false if string1.length != string2.length 
    string1.each_char do |char|
        if string2.include?(char)
            i = string2.index(char)
            string2.slice!(i)
        else
            false
        end 
    end
    true
end

def third_anagram?(string1, string2)
    string1.split("").sort == string2.split("").sort
end

def fourth_anagram?(string1, string2)
    count = Hash.new(0)
    string1.each_char { |char1| count[char1] += 1 }
    string2.each_char { |char2| count[char2] -= 1 if count.has_key?(char2) }
    count.values.sum == 0
end
