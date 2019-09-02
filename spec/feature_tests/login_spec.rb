require 'capybara/rspec'
feature 'login page' do
  scenario 'loads content' do
    visit '/login'
    expect(page).to have_content('New User?')
  end

  scenario 'finds button?' do
    visit '/login'
    expect(page).to have_button('Sign in')
  end

  scenario 'link redirect?' do
    visit '/login'
    expect(page).to have_link('here')
  end

  scenario 'link redirect?' do
    visit '/login'
    click_link 'here'
    expect(page).to have_content('Create Username')
  end
end
