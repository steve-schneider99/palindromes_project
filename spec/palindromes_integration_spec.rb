require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('No pain, No palindrome', {:type=> :feature}) do
  it('processes the user entry and returns whether or not it is a palindrome') do
    visit('/')
    fill_in('word', :with=> 'abba')
    click_button('Activate the Palindrome Detector 9000(drum roll please...)')
    expect(page).to have_content("This is a palindrome.")
  end
end
