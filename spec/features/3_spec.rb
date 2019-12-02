require 'rails_helper'

feature 'test #3', js: true do
  scenario 'third task' do
    visit '/pages/test_3'
    expect(page).to have_content('Test #3 - pages with basic js')
    within first('table tr') do
      find('td', text: 'First').click
    end
    expect(page).to have_css('.highlighted')

    click_on 'Next'
    expect(page).to have_content('Test #4 - pages with ajax calls')
  end
end
