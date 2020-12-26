require_relative 'error.rb'

def initialize_names(arr)
  
  if arr.length === 0
    return Error.emptyArr
  end

  newArr = Array.new

  arr.each do |item|
      arr_element = item
      words_array = arr_element.split(' ')
      fChar = words_array[0][0] + "."
      sChar = words_array[1][0] + "."
      
      newArr << fChar + ' ' + sChar
  end

  print newArr

end

initialize_names(["Harry Potter", "Ron Weasley"])
#initialize_names(["Stephen Hawking"]) ➞ ["S. H."]
#initialize_names(["Harry Potter", "Ron Weasley"]) ➞ ["H. P.", "R. W."]
#initialize_names(["Sherlock Holmes", "John Watson", "Irene Adler"]) ➞ ["S. H.", "J. W.", "I. A."]