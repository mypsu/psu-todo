#require 'factory_girl'

FactoryGirl.define do 
	factory :user do
    username "joe@hotmail.com"
    password "abcdef"
  end
end

FactoryGirl.define do 
	factory :project do
		user_id "123"
  		name "testproject1"
 	end
end

FactoryGirl.define do
	factory :project do
		user_id "999"
		name nil
	end		
end

FactoryGirl.define do
	factory :task do
		project_id "22"
		description "task Test"
 	end
end


FactoryGirl.define do
	factory :task do
		project_id "88"
		description nil
		end
end