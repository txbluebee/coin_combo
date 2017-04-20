require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin_combo', {:type => :feature}) do
  it('accepts user input and displays result') do
    visit('/')
    fill_in('change', :with => 69)
    click_button('Calculate')
    expect(page).to have_content('2 quarter(s) 1 dime(s) 1 nickel 4 cent(s)')
  end
end
