class Story < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  
  validates_presence_of :project, :name
  
end
