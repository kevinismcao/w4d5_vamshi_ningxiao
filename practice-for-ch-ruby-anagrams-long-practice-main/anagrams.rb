def first_anagram? (string1, string2)
    array = string1.split('')
    array2 = string2.split('') 
    #print array 
     array.permutation(string1.length).to_a.include?(array2)
end 

def second_anagram?(string1, string2)
    array = string1.split('')
    array2 = string2.split('')
   array.each do |char|
    if array2.include?(char)
        i = array2.find_index(char)
        array2.delete_at(i)
    end
   end
   return array2.empty? 
end 

def third_anagram?(string1, string2)
    array = string1.split('').sort
    array2 = string2.split('').sort 
    array == array2
end

def fourth_anagram?(string1, string2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    string1.split('').each {|c| hash1[c] += 1}
    string2.split('').each {|c| hash2[c] += 1}

    hash1 == hash2

end

puts
p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
puts 