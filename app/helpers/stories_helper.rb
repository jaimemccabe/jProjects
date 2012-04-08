module StoriesHelper

  def status_column_text(status)
    case status
    when 1
      "Not Yet Started"
    when 2
      "In Progress"
    when 3
      "In Review"
    when 4
      "Complete"
    end
  end

  def tasks_with_status(story, status)
    story.tasks.where("status = ?", status).order_by("updated_at DESC")
  end

end
