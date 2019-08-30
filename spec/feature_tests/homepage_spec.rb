require 'capybara/rspec'
feature 'homepage' do
  scenario 'loads content' do
    visit '/'
    expect(page).to have_content('Welcome to Chitter!')
  end
end
