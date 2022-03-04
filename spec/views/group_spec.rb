require 'rails_helper'

RSpec.describe 'Group index page', type: :system do
  describe 'check if' do
    before(:example) do
      @user = User.new(name: 'John', email: 'john@mail.com', password: 'qwe123')
      @user.save
      visit new_user_session_path
      sleep(2)
      fill_in 'user_email', with: 'john@mail.com'
      fill_in 'user_password', with: 'qwe123'
      find('#log_in', match: :first).click
      sleep(1)
      visit groups_path
      sleep(1)
    end
    it 'have the right content' do
      expect(page).to have_content('New Group')
    end
    it 'can access the new group page' do
      click_link('New Group', match: :first)
      expect(page).to have_content('Back to Groups')
    end
    it 'can create a new group' do
      click_link('New Group', match: :first)
      fill_in 'group_name', with: 'Microsoft'
      fill_in 'group_icon', with: 'https://cdn.worldvectorlogo.com/logos/microsoft.svg'
      click_button 'Create Group'
      sleep(1)
      expect(page).to have_content('Group was successfully created.')
    end
  end
end
