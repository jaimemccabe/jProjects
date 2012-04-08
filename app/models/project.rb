class Project < ActiveRecord::Base
  
  has_many :stories, :dependent => :destroy
  has_many :tasks, :through => :stories
  
  validates :name, :presence => true
end
