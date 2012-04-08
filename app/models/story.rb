class Story < ActiveRecord::Base
  belongs_to :project
  has_many :tasks, :dependent => :destroy
  
  validates_presence_of :project, :name
  
end
