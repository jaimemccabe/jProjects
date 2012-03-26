require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    
    @task = FactoryGirl.create(:task)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do    
    @story = Story.last
    
    assert_difference('Task.count') do
      post :create, task: {:title => 'Walk Dog', :story_id => @story.id}
    end

    assert_redirected_to Project.last
    @task = Task.last
    assert_equal 'Walk Dog', @task.title
    assert_equal @story, @task.story
  end
  

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: @task.attributes
    assert_redirected_to tasks_path
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
