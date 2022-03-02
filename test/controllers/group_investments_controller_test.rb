require 'test_helper'

class GroupInvestmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_investment = group_investments(:one)
  end

  test 'should get index' do
    get group_investments_url
    assert_response :success
  end

  test 'should get new' do
    get new_group_investment_url
    assert_response :success
  end

  test 'should create group_investment' do
    assert_difference('GroupInvestment.count') do
      post group_investments_url,
           params: { group_investment: { group_id: @group_investment.group_id,
                                         investment_id: @group_investment.investment_id } }
    end

    assert_redirected_to group_investment_url(GroupInvestment.last)
  end

  test 'should show group_investment' do
    get group_investment_url(@group_investment)
    assert_response :success
  end

  test 'should get edit' do
    get edit_group_investment_url(@group_investment)
    assert_response :success
  end

  test 'should update group_investment' do
    patch group_investment_url(@group_investment),
          params: { group_investment: { group_id: @group_investment.group_id,
                                        investment_id: @group_investment.investment_id } }
    assert_redirected_to group_investment_url(@group_investment)
  end

  test 'should destroy group_investment' do
    assert_difference('GroupInvestment.count', -1) do
      delete group_investment_url(@group_investment)
    end

    assert_redirected_to group_investments_url
  end
end
