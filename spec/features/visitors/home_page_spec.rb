feature 'Home page' do
  scenario 'visit the home page' do
    visit root_path

    expect(page).to have_content 'Pavan'
    expect(page).to have_content 'Scheduling is a dance'

    # Admin Content
    expect(page).to have_content 'For Worship Leaders'
    expect(page).to have_link 'Members'
    expect(page).to have_link 'Music'
    expect(page).to have_link 'Communicate'

    # User Content
    expect(page).to have_content 'For Worship Team Members'
    expect(page).to have_link 'Availability'
    expect(page).to have_content 'Upcoming Sets'
    expect(page).to have_content 'Music'

    # Register new user
    visit root_path
    click_link 'Sign Up'
    # expect(page).to have_content 'Join the Dance!'

    # Login existing user
    visit root_path
    click_link 'Log In'
    # expect_page 'Welcome Back to the Dance!'

  end
end
