require 'capybara/rspec'
feature 'signup page' do
  scenario 'loads content' do
    visit '/signin'
    expect(page).to have_content('Create Username')
  end

  scenario 'finds button?' do
    visit '/signin'
    expect(page).to have_button('Create Account')
  end

  scenario 'link redirect?' do
    visit '/signin'
    expect(page).to have_link('here')
  end

  scenario 'link redirect?' do
    visit '/signin'
    click_link 'here'
    expect(page).to have_content('New User')
  end
end
