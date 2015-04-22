class String
  define_method(:palindromes) do
    word = self
    reversed_word = word.reverse()
    if word.eql?(reversed_word)
      "This is a palindrome."
    else
      "This is not a palindrome."
    end
  end
end
