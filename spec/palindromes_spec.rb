require('rspec')
require('palindromes')

describe('String#palindrome') do
  it('will tell us if a word is a palindrome') do
    expect(("abba").palindromes()).to(eq("This is a palindrome."))
  end
end
  
