require 'capybara/rspec'
feature 'homepage' do
  scenario 'loads content' do
    visit '/'
    expect(page).to have_content('Welcome to Chitter!')
  end

  scenario'find log in button?' do
    visit '/'
    expect(page).to have_button('Log in')
  end
  scenario'find sign in button?' do
    visit '/'
    expect(page).to have_button('Sign in')
  end

  scenario 'loads log in content' do
    visit '/'
    click_on'Log in'
    expect(page).to have_content('New User?')
  end

  scenario 'loads sign in content' do
    visit '/'
    click_on'Sign in'
    expect(page).to have_content('Create Username')
  end
end
