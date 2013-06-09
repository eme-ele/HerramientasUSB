class User < ActiveRecord::Base

  after_initialize :set_type
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :type
  # attr_accessible :title, :body

  def set_type
  	self.type ||= "NormalUser"
  end

end
