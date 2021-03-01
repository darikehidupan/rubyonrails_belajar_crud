require "test_helper"

class SiswaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get siswa_index_url
    assert_response :success
  end

  test "should get show" do
    get siswa_show_url
    assert_response :success
  end

  test "should get add" do
    get siswa_add_url
    assert_response :success
  end

  test "should get edit" do
    get siswa_edit_url
    assert_response :success
  end
end
