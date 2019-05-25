class Task < ApplicationRecord
	belongs_to :owner,class_name: "User", foreign_key: :owner_id 
	belongs_to :project
end
