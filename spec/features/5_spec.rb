require 'rails_helper'

feature 'test #5', js: true do
  let!(:user) { create(:user) }

  before(:each) do
  allow_any_instance_of(ApplicationController).to receive(:authenticate_user!).and_return(true)
  allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

 end
  scenario 'fifth task' do
    visit '/pages/test_5'
#    fill_in('user_email', with: user.email)
 #   fill_in('user_password', with: user.password)
  #  within('.actions') do
   #   click_on('Log in')
    #end
    expect(page).to have_content('Test #5 - page that requires authentication')
    expect(page).to have_content(user.email)

    click_on('Next')
    expect(page).to have_content('Test #6 - creating factory for model in module')

  end
end

