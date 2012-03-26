class Task < ActiveRecord::Base
  belongs_to :story
  has_one :project, :through => :story

  validates_presence_of :story, :title
  
  before_save :set_default_status
  
  def set_default_status
    self.status ||= 1
  end
  
  def not_yet_started?
    status == 1
  end
  
  def in_progress?
    status == 2
  end
  
  def in_review?
    status == 3
  end
  
  def complete?
    status == 4
  end
end
