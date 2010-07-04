class Company < ActiveRecord::Base
  has_many :employees, :dependent => :destroy
  has_many :users, :dependent => :destroy
  authenticates_many :employee_sessions
  authenticates_many :user_sessions

end