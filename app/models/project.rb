class Project < ApplicationRecord
   belongs_to :owner, class_name: "User", foreign_key: :owner_id
   has_many :tasks


   def complete_tasks
   	self.tasks.where(status: 'Done')
   end

   def progress_tasks
     self.tasks.where(status: 'Progress')
   end

   def new_taskes
     self.tasks.where(status: 'New')
   end
end
