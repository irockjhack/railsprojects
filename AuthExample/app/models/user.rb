class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
	 :confirmable, :token_authenticatable

  before_save :ensure_authentication_token
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  def skip_confirmation!
     self.confirmed_at = Time.now
  end
end
