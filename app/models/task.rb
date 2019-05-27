class Task < ApplicationRecord
  belongs_to :owner,class_name: "User", foreign_key: :owner_id 
  belongs_to :project
  enum status: [:New, :Progress, :Done]
  after_initialize :set_default_status, :if => :new_record?
  scope :status, -> (status) { where status: status }
  scope :user_tasks_with_satus, -> (status, owner_id) {where status: status, owner_id: owner_id}




  def set_default_status
    self.status ||= :New
  end

end
