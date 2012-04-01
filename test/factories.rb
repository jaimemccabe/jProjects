FactoryGirl.define do
  factory :project do
    name "Kori's Project"
  end
  
  factory :story do
    project
    name "Dog sitting" 
  end

  factory :story2 do
    project
    name "Dog grooming"
  end
  
  factory :task do
    story
    title "Walk the dog"
  end

  factory :task2 do
    story2
    title "Brush dog"
  end
  
  factory :task3 do
    story2
    title "Shampoo dog"
  end
end
