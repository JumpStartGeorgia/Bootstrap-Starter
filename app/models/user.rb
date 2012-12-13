class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
	# :registerable, :recoverable,
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role

  validates :role, :presence => true

  def self.no_admins
    where("role != ?", ROLES[:admin])
  end

	# if no role is supplied, default to the basic user role
	def check_for_role
		self.role = User::ROLES[:user] if self.role.nil?
	end

  # use role inheritence
  # - a role with a larger number can do everything that smaller numbers can do
  ROLES = {:user => 0, :admin => 99}
  def role?(base_role)
    if base_role && ROLES[base_role]
      return ROLES[base_role] <= ROLES[rol]
    end
    return false
  end
end
