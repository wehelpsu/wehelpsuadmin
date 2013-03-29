class Admin::FrontController < Admin::ApplicationController
def index
  if params[:to].present?
    flash[:notice]="sucessfully sent mail"
    SimpleMailer.send_email(params[:to],params[:subject],params[:body]).deliver
  else
    flash[:notice]=nil
  end
end
end
