require 'rails_helper'

RSpec.describe 'Visit', type: :system do
  describe 'Home page' do
    it 'Check parameters' do
      visit root_path
      expect(page).to have_content('Budget')
    end
  end
end
