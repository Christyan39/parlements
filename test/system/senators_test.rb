require "application_system_test_case"

class SenatorsTest < ApplicationSystemTestCase
  setup do
    @senator = senators(:one)
  end

  test "visiting the index" do
    visit senators_url
    assert_selector "h1", text: "Senators"
  end

  test "should create senator" do
    visit senators_url
    click_on "New senator"

    fill_in "Name", with: @senator.name
    fill_in "Photo", with: @senator.photo
    fill_in "Title", with: @senator.title
    click_on "Create Senator"

    assert_text "Senator was successfully created"
    click_on "Back"
  end

  test "should update Senator" do
    visit senator_url(@senator)
    click_on "Edit this senator", match: :first

    fill_in "Name", with: @senator.name
    fill_in "Photo", with: @senator.photo
    fill_in "Title", with: @senator.title
    click_on "Update Senator"

    assert_text "Senator was successfully updated"
    click_on "Back"
  end

  test "should destroy Senator" do
    visit senator_url(@senator)
    click_on "Destroy this senator", match: :first

    assert_text "Senator was successfully destroyed"
  end
end
