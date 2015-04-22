require('sinatra')
require('sinatra/reloader')
require('./lib/palindromes')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/reversed') do
  @word = params.fetch('word')
  @palindrome = params.fetch('word').palindromes()
  erb(:reversed)
end
