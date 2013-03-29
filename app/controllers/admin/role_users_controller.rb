class Admin::RoleUsersController < Admin::ApplicationController
  # GET /admin/roles
  # GET /admin/roles.json
  def index
    @role_users = RoleUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @role_users }
    end
  end

  # GET /admin/roles/1
  # GET /admin/roles/1.json
  def show
    @role_user = RoleUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role_user }
    end
  end

  # GET /admin/roles/new
  # GET /admin/roles/new.json
  def new
    @role_user = RoleUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role_user }
    end
  end

  # GET /admin/roles/1/edit
  def edit
    @admin_role = RoleUser.find(params[:id])
  end

  # POST /admin/roles
  # POST /admin/roles.json
  def create
    @admin_role = RoleUser.new(params[:role_user])

    respond_to do |format|
      if @admin_role.save
        format.html { redirect_to @role_users_path, notice: 'Role was successfully created.' }
        format.json { render json: @admin_role, status: :created, location: @admin_role }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/roles/1
  # PUT /admin/roles/1.json
  def update
    @admin_role = Role.find(params[:id])

    respond_to do |format|
      if @admin_role.update_attributes(params[:admin_role])
        format.html { redirect_to @admin_role, notice: 'Role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/roles/1
  # DELETE /admin/roles/1.json
  def destroy
    @admin_role = Role.find(params[:id])
    @admin_role.destroy

    respond_to do |format|
      format.html { redirect_to admin_roles_url }
      format.json { head :no_content }
    end
  end


end
