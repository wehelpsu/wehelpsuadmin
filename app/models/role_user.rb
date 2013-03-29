class RoleUser < ActiveRecord::Base
belongs_to :user
belongs_to :roles
end


