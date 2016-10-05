require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @member = Member.create()
  end

  test "should not save member without informaion" do
    assert_not @member.save
  end

  test "should have valid email address" do
    @member = Member.create(email: 'test')
    assert_not @member.save
  end

  test "member should be created successfully if he has all valid values" do
    @member = Member.create(email: 'test@gmail.com', name: 'user' ,password: 'password')
    assert @member.save
  end

  test "member should have unique email address" do
    @member1 = Member.create(email: 'test@gmail.com', name: 'user' ,password: 'password')
    @member = Member.create(email: 'test@gmail.com', name: 'user' ,password: 'password')
    assert_not @member.save
  end

  test "member should have a password" do
    @member1 = Member.create(email: 'test@gmail.com', name: 'user' ,password: '')
    assert_not @member.save
  end

  test "member should have a name" do
    @member1 = Member.create(email: 'test@gmail.com', name: '' ,password: 'password')
    assert_not @member.save
  end

  test "member should have an email address" do
    @member1 = Member.create(email: '', name: 'name' ,password: 'password')
    assert_not @member.save
  end
end
