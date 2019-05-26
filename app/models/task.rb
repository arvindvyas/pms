class Task < ApplicationRecord
  belongs_to :owner,class_name: "User", foreign_key: :owner_id 
  belongs_to :project
  enum status: [:New, :Progress, :Done]
  after_initialize :set_default_status, :if => :new_record?



  def set_default_status
    self.status ||= :New
  end

end
