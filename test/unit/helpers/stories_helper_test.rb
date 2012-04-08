require 'test_helper'

class StoriesHelperTest < ActionView::TestCase
  test "gets a task list given a story and status" do
    story2 = Factorygirl.create(:story2)
    status = 4
    task2 = Factorygirl.create(:task2, :status => status)
    task3 = Factorygirl.create(:task3, :status => status)
    tasks = tasks_with_status(story2, status)

    assert tasks.length == 2
  end

end
