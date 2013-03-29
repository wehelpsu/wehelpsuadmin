class Admin::MailerController < Admin::ApplicationController
  def index
    @users=User.all
  end
  def create
   
    params[:user_ids].each do |id|
    #logger.debug "here is the is #{id}"  
    user=User.find(id.to_i)
    SimpleMailer.send_email(user.email,params[:subject],params[:body]).deliver
     flash[:notice]="sucessfully sent mail"
    end
    redirect_to :admin_mailer_index
  end
  
end
