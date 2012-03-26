FactoryGirl.define do
  factory :project do
    name "Kori's Project"
  end
  
  factory :story do
    project
    name "Dog sitting" 
  end
  
  factory :task do
    story
    title "Walk the dog"
  end
end