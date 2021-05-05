dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substrings(string,array)
  #new hash 
  result = Hash.new(0)
  #create and array of words from the string given
  words = string.downcase.scan(/[\w']+/)
  #create a hash by checking each word from the array. If it is included in the string the count will go up 1
  words.each do |word|
    array.select{|dic_word| result[dic_word]+=1 if word.include?(dic_word)}
  end
return result
end 

p substrings("Howdy partner, sit down! How's it going?",dictionary)
