require './spec/spec_helper'

# As a Maker
# So that I can post messages on Chitter as me
# I want to log in to Chitter


feature 'sign in' do
  scenario 'if I am a user I can sign in' do
    sign_in
    expect(page).to have_content('Welcome m1k3')
  end
  scenario 'sign in wrong password' do
    sign_in_wrong_details
    expect(page).to have_content('The email or password is incorrect')
  end
end
