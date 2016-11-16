class String
  define_method(:title_case) do
    lowercase_words =["and","of","the","or","a","an", "if","is","my"]
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
