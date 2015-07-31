class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :role

  def has_role?(role_name)
    self.role == Role.where(name: role_name).first
  end 

  def add_role(role_name)
    role = Role.where(name: role_name).first
    self.role = role unless  role.blank?
  end 
end
