class UserSessionsController < ApplicationController
  layout 'application', :except => :new
  # GET /user_sessions
  # GET /user_sessions.json
  def index
   
  end

  # GET /user_sessions/1
  # GET /user_sessions/1.json
  def show
    @user_session = UserSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_session }
    end
  end

  # GET /user_sessions/new
  # GET /user_sessions/new.json
  def new
    @user_session = UserSession.new
    render :layout => false
    
  end

  # GET /user_sessions/1/edit
  def edit
    @user_session = UserSession.find(params[:id])
  end

  # POST /user_sessions
  # POST /user_sessions.json
  def create
    @user_session = UserSession.new(params[:user_session])

    
      if @user_session.save
        redirect_to admin_front_index_path
      else
        
        respond_to do |format|
          format.html { render action: "new" }
          format.json { render json: @user_session.errors, status: :unprocessable_entity }
        end
      end
  end

  # PUT /user_sessions/1
  # PUT /user_sessions/1.json
  def update
    @user_session = UserSession.find(params[:id])

    respond_to do |format|
      if @user_session.update_attributes(params[:user_session])
        format.html { redirect_to @user_session, notice: 'User session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.json
  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy

    respond_to do |format|
      format.html { redirect_to user_sessions_url }
      format.json { head :no_content }
    end
  end
end
