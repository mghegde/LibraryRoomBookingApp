require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    post :create, member: { email: @member.email, name: @member.name, password: @member.password }
    assert_response :success
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { email: @member.email, name: @member.name, password: @member.password }
    assert_response :success
  end

  test "should destroy member" do
    delete :destroy, id: @member
    assert_response :success
  end
end
