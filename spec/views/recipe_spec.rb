require 'rails_helper'

RSpec.describe 'test recipe/index', type: :feature do
  before(:all) do
    @user = User.create(name: 'Abebe', email: 'abebe@email.com', password: 'abebe123',
                        password_confirmation: 'abebe123')
    @user.save
    sign_in @user
    recipe = Recipe.new(name: 'Shiro', preparation_time: '6 months', cooking_time: '2 hours', description: 'Test',
      public: false, user_id: @user.id)
  end

  scenario 'should show title: Shiro' do
    visit user_recipes_path(@user.id)
    expect(page).to have_content("Shiro")
  end
  end
