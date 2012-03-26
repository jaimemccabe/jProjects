require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: @project.attributes
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    # @project.stories.create! name: "Dog sitting"
    # @project.stories.last.tasks.create! title: "Walk dog"
    
    get :show, id: @project.id
    assert_response :success
    
    # puts @response.body
      
    # assert @response.body =~ /Dog sitting/
    # assert @response.body =~ /Walk dog/
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project.id, project: { name: 'changed' }
    assert_redirected_to project_path(assigns(:project))
    assert_equal 'changed', @project.reload.name
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
