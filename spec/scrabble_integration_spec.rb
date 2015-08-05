require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry of one word and returns the scrabble score') do
    visit('/')
    fill_in('score', :with => 'Expeditious')
    click_button('Check it!')
    expect(page).to have_content(21)
  end

  it('processes the user entry of one word and returns the scrabble score') do
    visit('/')
    fill_in('score', :with => 'Expeditious')
    click_button('Check it!')
    expect(page).to have_content('Expeditious')
  end
end
