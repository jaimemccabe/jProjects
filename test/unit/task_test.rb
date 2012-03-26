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

  
end
