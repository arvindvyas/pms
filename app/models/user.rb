class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:developer, :admin, :user]
  has_many :projects, foreign_key: :owner_id
  has_many :tasks, foreign_key: :owner_id
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def self.developers
    User.where(role: 'developer')
  end

  def users_taskes(status)
    Task.user_tasks_with_satus(status, self.id)
  end

end
