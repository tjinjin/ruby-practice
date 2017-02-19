array = ['Ruby', 'Perl', 'PHP', 'Python', 'JavaScript', 'C++', 'Java']

puts "----- break ------"
count = 0
array.each{ |item|
    count += 1
    if count == 3
        break
    end
    print count, " : ", item, "\n"
}

puts "\n----- next ------"
count = 0
array.each{ |item|
    count += 1
    if count == 3
        next
    end
    print count, " : ", item, "\n"
}

puts "\n----- redo ------"
count = 0
array.each{ |item|
    count += 1
    if count == 3
        redo
    end
    print count, " : ", item, "\n"
}
