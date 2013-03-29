class User < ActiveRecord::Base
	acts_as_authentic
	has_one :role_user
end
