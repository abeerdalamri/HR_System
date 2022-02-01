require "application_system_test_case"

class DivisonsTest < ApplicationSystemTestCase
  setup do
    @divison = divisons(:one)
  end

  test "visiting the index" do
    visit divisons_url
    assert_selector "h1", text: "Divisons"
  end

  test "should create divison" do
    visit divisons_url
    click_on "New divison"

    fill_in "Desc", with: @divison.desc
    fill_in "Manager", with: @divison.manager
    fill_in "Name", with: @divison.name
    fill_in "Team", with: @divison.team
    click_on "Create Divison"

    assert_text "Divison was successfully created"
    click_on "Back"
  end

  test "should update Divison" do
    visit divison_url(@divison)
    click_on "Edit this divison", match: :first

    fill_in "Desc", with: @divison.desc
    fill_in "Manager", with: @divison.manager
    fill_in "Name", with: @divison.name
    fill_in "Team", with: @divison.team
    click_on "Update Divison"

    assert_text "Divison was successfully updated"
    click_on "Back"
  end

  test "should destroy Divison" do
    visit divison_url(@divison)
    click_on "Destroy this divison", match: :first

    assert_text "Divison was successfully destroyed"
  end
end
