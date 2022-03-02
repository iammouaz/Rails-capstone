require 'application_system_test_case'

class GroupInvestmentsTest < ApplicationSystemTestCase
  setup do
    @group_investment = group_investments(:one)
  end

  test 'visiting the index' do
    visit group_investments_url
    assert_selector 'h1', text: 'Group investments'
  end

  test 'should create group investment' do
    visit group_investments_url
    click_on 'New group investment'

    fill_in 'Group', with: @group_investment.group_id
    fill_in 'Investment', with: @group_investment.investment_id
    click_on 'Create Group investment'

    assert_text 'Group investment was successfully created'
    click_on 'Back'
  end

  test 'should update Group investment' do
    visit group_investment_url(@group_investment)
    click_on 'Edit this group investment', match: :first

    fill_in 'Group', with: @group_investment.group_id
    fill_in 'Investment', with: @group_investment.investment_id
    click_on 'Update Group investment'

    assert_text 'Group investment was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Group investment' do
    visit group_investment_url(@group_investment)
    click_on 'Destroy this group investment', match: :first

    assert_text 'Group investment was successfully destroyed'
  end
end
