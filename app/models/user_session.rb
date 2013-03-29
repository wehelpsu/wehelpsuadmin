class UserSession < Authlogic::Session::Base
   def to_key
id ? id : nil
end
  
  def persisted?
    false
  end
end