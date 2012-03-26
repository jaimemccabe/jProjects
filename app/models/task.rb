class Task < ActiveRecord::Base
  belongs_to :story
  has_one :project, :through => :story

  validates_presence_of :story, :title
end
