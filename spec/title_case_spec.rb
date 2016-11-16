require('rspec')
require('title_case')
require('pry')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('processes the user entry and and returns it title cased') do
    visit('/')
    fill_in('title', :with => 'green eggs and ham')
    click_button('Do the thing')
    expect(page).to have_content('Green Eggs and Ham')
  end
end

# describe('String#title_case') do
#   it('capitalizes the first letter of a word') do
#     expect(("shoe").title_case()).to(eq(["Shoe"]))
#   end
#   it('returns array for multiple word string') do
#     expect(("hey there you").title_case()).to(eq(["Hey", "There", "You"]))
#   end
#   it('capitalizes each word of an array') do
#     expect(("hey there you").title_case()).to(eq(["Hey", "There", "You"]))
#   end
#   it('lower cases articles, conjunctions, and prepositions in an array') do
#     expect(("john steinbeck's of mice and men").title_case()).to(eq(["John", "Steinbeck's", "of", "Mice", "and", "Men"]))
#   end
#   it('Upper cases articles, conjunctions, and prepositions in an array IF first word in title') do
#     expect(("of mice and men").title_case()).to(eq(["Of", "Mice", "and", "Men"]))
#   end
# end
