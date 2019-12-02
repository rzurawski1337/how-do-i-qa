require 'rails_helper'

feature 'test #2', js: true do
  scenario 'second task' do
    visit '/pages/test_2'
    expect(page).to have_content('Test #2 - forms')
    expect(page).to have_content('Data will appear here after submission.')

    click_on('Submit')
    expect(page).to have_content('Some data was missing')

    fill_in('example_textfield', with: 'text')
    check('example_checkbox')
    select('Opt 1', from: 'example_select')
    choose('example_radiobutton_opt_1')
    click_on('Submit')

    expect(page).to have_content('Submitted successfully')
    expect(page).to have_content('Submitted text: text')
    expect(page).to have_content('Checkbox checked: 1')
    expect(page).to have_content('Select option picked: Opt 1')
    expect(page).to have_content('Radio option picked: opt 1')
    within('.text-right') do
      click_on('Next')
    end
    expect(page).to have_content('Test #3 - pages with basic js')
  end
end
