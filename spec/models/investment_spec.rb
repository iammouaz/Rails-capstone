require 'rails_helper'

RSpec.describe Investment, type: :model do
  before(:each) do
    @user = User.new(name: 'John', email: 'john@mail.com', password: 'qwe123')
    @user.save
    @apple = @user.groups.new(name: 'Apple', icon: 'https://cdn.worldvectorlogo.com/logos/apple-11.svg')
    @apple.save
    @investment = Investment.new(name: 'Stocks', amount: 1000, user_id: @user.id, group_id: @apple.id)
    @investment.save
  end
  it 'valid when all fields are not nil' do
    expect(@investment).to be_valid
  end
  it 'name field is required' do
    @investment.name = nil
    expect(@investment).to_not be_valid
  end
  it 'icon field is required' do
    @investment.amount = nil
    expect(@investment).to_not be_valid
  end
  it 'should belong to a group' do
    @investment.user_id = nil
    expect(@investment).to_not be_valid
  end
  it 'should belong to an user' do
    @investment.group_id = nil
    expect(@investment).to_not be_valid
  end
end
