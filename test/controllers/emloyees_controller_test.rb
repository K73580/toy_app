require "test_helper"

class EmloyeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emloyee = emloyees(:one)
  end

  test "should get index" do
    get emloyees_url
    assert_response :success
  end

  test "should get new" do
    get new_emloyee_url
    assert_response :success
  end

  test "should create emloyee" do
    assert_difference("Emloyee.count") do
      post emloyees_url, params: { emloyee: { age: @emloyee.age, designation: @emloyee.designation, gender: @emloyee.gender, name: @emloyee.name } }
    end

    assert_redirected_to emloyee_url(Emloyee.last)
  end

  test "should show emloyee" do
    get emloyee_url(@emloyee)
    assert_response :success
  end

  test "should get edit" do
    get edit_emloyee_url(@emloyee)
    assert_response :success
  end

  test "should update emloyee" do
    patch emloyee_url(@emloyee), params: { emloyee: { age: @emloyee.age, designation: @emloyee.designation, gender: @emloyee.gender, name: @emloyee.name } }
    assert_redirected_to emloyee_url(@emloyee)
  end

  test "should destroy emloyee" do
    assert_difference("Emloyee.count", -1) do
      delete emloyee_url(@emloyee)
    end

    assert_redirected_to emloyees_url
  end
end
