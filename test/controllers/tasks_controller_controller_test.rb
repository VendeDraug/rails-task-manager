require 'test_helper'

class TasksControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tasks_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get tasks_controller_show_url
    assert_response :success
  end

  test "should get create" do
    get tasks_controller_create_url
    assert_response :success
  end

  test "should get update" do
    get tasks_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tasks_controller_destroy_url
    assert_response :success
  end

end
