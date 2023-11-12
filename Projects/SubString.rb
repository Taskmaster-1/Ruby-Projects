def substrings(word, dictionary)
    word = word.downcase
    result = Hash.new(0)

    dictionary.each do |substring|
        substring = substring.downcase
        occurrences = word.scan(substring).length
        result[substring] += occurrences if occurrences > 0
    end
    result
    end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

result_single_word = substrings("below", dictionary)
puts result_single_word

result_multiple_words = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts result_multiple_words
