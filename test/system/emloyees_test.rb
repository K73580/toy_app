require "application_system_test_case"

class EmloyeesTest < ApplicationSystemTestCase
  setup do
    @emloyee = emloyees(:one)
  end

  test "visiting the index" do
    visit emloyees_url
    assert_selector "h1", text: "Emloyees"
  end

  test "should create emloyee" do
    visit emloyees_url
    click_on "New emloyee"

    fill_in "Age", with: @emloyee.age
    fill_in "Designation", with: @emloyee.designation
    fill_in "Gender", with: @emloyee.gender
    fill_in "Name", with: @emloyee.name
    click_on "Create Emloyee"

    assert_text "Emloyee was successfully created"
    click_on "Back"
  end

  test "should update Emloyee" do
    visit emloyee_url(@emloyee)
    click_on "Edit this emloyee", match: :first

    fill_in "Age", with: @emloyee.age
    fill_in "Designation", with: @emloyee.designation
    fill_in "Gender", with: @emloyee.gender
    fill_in "Name", with: @emloyee.name
    click_on "Update Emloyee"

    assert_text "Emloyee was successfully updated"
    click_on "Back"
  end

  test "should destroy Emloyee" do
    visit emloyee_url(@emloyee)
    click_on "Destroy this emloyee", match: :first

    assert_text "Emloyee was successfully destroyed"
  end
end
