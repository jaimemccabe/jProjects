require 'test_helper'

class StoryTest < ActiveSupport::TestCase

  test "story must be assigned to a project" do
    @story = Story.new
    assert !@story.valid?
    assert @story.errors[:project].present?
  end
  
  test "story requires a name" do
    @story = Story.new
    assert !@story.valid?
    assert @story.errors[:name].present?
  end
end
