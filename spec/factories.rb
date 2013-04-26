FactoryGirl.define do
  factory :user do
    username "joe@hotmail.com"
    password "abcdef"
  end
  factory :task do
    description "do taxes"
    status "FINISH" 
  end
  factory :project do
    name "2012 tax"
    description "my project" 
  end
end
