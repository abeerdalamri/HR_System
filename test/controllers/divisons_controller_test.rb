require "test_helper"

class DivisonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divison = divisons(:one)
  end

  test "should get index" do
    get divisons_url
    assert_response :success
  end

  test "should get new" do
    get new_divison_url
    assert_response :success
  end

  test "should create divison" do
    assert_difference("Divison.count") do
      post divisons_url, params: { divison: { desc: @divison.desc, manager: @divison.manager, name: @divison.name, team: @divison.team } }
    end

    assert_redirected_to divison_url(Divison.last)
  end

  test "should show divison" do
    get divison_url(@divison)
    assert_response :success
  end

  test "should get edit" do
    get edit_divison_url(@divison)
    assert_response :success
  end

  test "should update divison" do
    patch divison_url(@divison), params: { divison: { desc: @divison.desc, manager: @divison.manager, name: @divison.name, team: @divison.team } }
    assert_redirected_to divison_url(@divison)
  end

  test "should destroy divison" do
    assert_difference("Divison.count", -1) do
      delete divison_url(@divison)
    end

    assert_redirected_to divisons_url
  end
end
