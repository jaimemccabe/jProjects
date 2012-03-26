require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  test "requires a story" do
    @task = Task.new
    assert !@task.valid?
    assert @task.errors[:story].present?
  end

  test "requires a title" do
    @task = Task.new
    assert !@task.valid?
    assert @task.errors[:title].present?
  end
  
  test "task status defaults to 1" do
    @task = FactoryGirl.create(:task, :status => nil)
    assert @task.status == 1
  end
  
  test "task responds to status queries" do
    @task = Task.new(:status => 1)
    assert @task.not_yet_started?
    @task.status = 2
    assert @task.in_progress?
    @task.status = 3
    assert @task.in_review?
    @task.status = 4
    assert @task.complete?
    
  end

  
end
