require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'John', email: 'john@mail.com', password: 'qwe123')
    @user.save
    @apple = @user.groups.new(name: 'Apple', icon: 'https://cdn.worldvectorlogo.com/logos/apple-11.svg')
  end
  it 'valid when all fields are not nil' do
    expect(@apple).to be_valid
  end
  it 'name field is required' do
    @apple.name = nil
    expect(@apple).to_not be_valid
  end
  it 'icon field is required' do
    @apple.icon = nil
    expect(@apple).to_not be_valid
  end
  it 'should belong to an user' do
    @apple.user_id = nil
    expect(@apple).to_not be_valid
  end
end
