require 'rails_helper'

RSpec.describe 'Investment index page', type: :system do
  describe 'check if' do
    before(:example) do
      @user = User.new(name: 'John', email: 'john@mail.com', password: 'qwe123')
      @user.save
      @ms = @user.groups.create(name: 'Microsoft', icon: 'https://cdn.worldvectorlogo.com/logos/microsoft.svg')
      @ms.save
      visit new_user_session_path
      sleep(2)
      fill_in 'user_email', with: 'john@mail.com'
      fill_in 'user_password', with: 'qwe123'
      find('#log_in', match: :first).click
      sleep(1)
      visit groups_path
      sleep(1)
      find("#group_#{@ms.id}", match: :first).click
    end
    it 'have the right content' do
      expect(page).to have_content('Microsoft')
    end
    it 'can add a new investment' do
      click_link('New Investment', match: :first)
      sleep(1)
      fill_in 'investment_name', with: 'Stock'
      fill_in 'investment_amount', with: '100'
      list = page.find('select#investment_group_id')
      list.select 'Microsoft'
      click_button 'Create Investment'
      sleep(1)
      expect(page).to have_content('Investments on Microsoft')
    end
    it 'can add multiple investments' do
      @apple = @user.groups.create(name: 'Apple', icon: 'https://cdn.worldvectorlogo.com/logos/apple-11.svg')
      @apple.save
      click_link('New Investment', match: :first)
      sleep(1)
      fill_in 'investment_name', with: 'Stock'
      fill_in 'investment_amount', with: '200'
      list = page.find('select#investment_group_id')
      list.select 'Microsoft'
      list.select 'Apple'
      click_button 'Create Investment'
      sleep(1)
      visit groups_path
      expect(page).to have_content('200.0', count: 2)
    end
  end
end
