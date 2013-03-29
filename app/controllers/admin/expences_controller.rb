class Admin::ExpencesController < Admin::ApplicationController
  # GET /admin/expences
  # GET /admin/expences.json
  def index
    @admin_expences = Expence.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_expences }
    end
  end

  # GET /admin/expences/1
  # GET /admin/expences/1.json
  def show
    @admin_expence = Expence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_expence }
    end
  end

  # GET /admin/expences/new
  # GET /admin/expences/new.json
  def new
    @expence = Expence.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_expence }
    end
  end

  # GET /admin/expences/1/edit
  def edit
    @admin_expence = Expence.find(params[:id])
  end

  # POST /admin/expences
  # POST /admin/expences.json
  def create
    @admin_expence = Expence.new(params[:admin_expence])

    respond_to do |format|
      if @admin_expence.save
        format.html { redirect_to @admin_expence, notice: 'Expence was successfully created.' }
        format.json { render json: @admin_expence, status: :created, location: @admin_expence }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_expence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/expences/1
  # PUT /admin/expences/1.json
  def update
    @admin_expence = Expence.find(params[:id])

    respond_to do |format|
      if @admin_expence.update_attributes(params[:admin_expence])
        format.html { redirect_to @admin_expence, notice: 'Expence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_expence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/expences/1
  # DELETE /admin/expences/1.json
  def destroy
    @admin_expence = Expence.find(params[:id])
    @admin_expence.destroy

    respond_to do |format|
      format.html { redirect_to admin_expences_url }
      format.json { head :no_content }
    end
  end
end
