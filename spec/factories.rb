require 'factory_girl'

FactoryGirl.define do 
	factory :user do
    username "joe@hotmail.com"
    password "abcdef"
  end
end

FactoryGirl.define :project do 
	factory :project do
	user_id "123"
  	name "testproject1"
 end
end

FactoryGirl.define :invalid_project do
	factory :project do
		user_id "999"
		name nil
	end		
end

FactoryGirl.define :task do
	factory :task do
	project_id "22"
	description "task Test"
 end

FactoryGirl.define :invalid_task do
	factory :task do
		project_id "88"
		description nil

end