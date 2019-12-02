require 'rails_helper'

feature 'test #4', js: true do
  scenario 'fourth task' do
    visit '/pages/test_4'
    expect(page).to have_content('Test #4 - pages with ajax calls')
    expect(page).to have_content('Text of this element should change after call completes.')
    click_on('Click me')
    expect(page).to have_content('This is answer from the server')

    click_on('Next')
    expect(page).to have_content('Log in')
  end
end
