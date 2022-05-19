def substrings(words, dictionary) 
  words.downcase!
  words = words.split(" ")
  substring_hash = {}
  dictionary.each do |word|
    substring_hash[word] = 0
  end
  dictionary.each do |word|
    words.each do |element|
      if element.include?(word)
        substring_hash[word] += 1
      end
    end
  end
  substring_hash.delete_if {|key, value| value == 0}
  substring_hash  
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("Howdy partner, sit down! How's it going?", dictionary)