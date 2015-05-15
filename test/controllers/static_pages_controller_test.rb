require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  test 'should get home' do
    get :home
    assert_response :success
    assert_select 'title', "#{@base_title}"
  end

  test 'should get help' do
    get :help
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end

  test 'should take us at about page' do
    get :about
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end
  test 'should take us to the contact page' do
    get :contact
    assert_response :success
    assert_select 'title', "Contact | #{@base_title}"
  end
end
