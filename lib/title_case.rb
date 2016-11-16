class String
  lowercase_words =["and","of","the","or","a","an", "if","is","my"]
  define_method(:title_case) do

    userArray = self.split()
    outputArray =[]
    userArray.each() do |word|
        if lowercase_words.include?(word.downcase)
          outputArray.push(word.downcase())
        else
          outputArray.push(word.capitalize())
        end
      outputArray.first.capitalize!()
    end
    outputArray.join(" ")
  end
end
