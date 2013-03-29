class Admin::FundsController < Admin::ApplicationController
  # GET /admin/funds
  # GET /admin/funds.json
  def index
    @admin_funds = Fund.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_funds }
    end
  end

  # GET /admin/funds/1
  # GET /admin/funds/1.json
  def show
    @admin_fund = Fund.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @admin_fund }
    end
  end

  # GET /admin/funds/new
  # GET /admin/funds/new.json
  def new
    @fund = Fund.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @admin_fund }
    end
  end

  # GET /admin/funds/1/edit
  def edit
    @admin_fund = Fund.find(params[:id])
  end

  # POST /admin/funds
  # POST /admin/funds.json
  def create
    @admin_fund = Fund.new(params[:admin_fund])

    respond_to do |format|
      if @admin_fund.save
        format.html { redirect_to @admin_fund, notice: 'Fund was successfully created.' }
        format.json { render json: @admin_fund, status: :created, location: @admin_fund }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/funds/1
  # PUT /admin/funds/1.json
  def update
    @admin_fund = Fund.find(params[:id])

    respond_to do |format|
      if @admin_fund.update_attributes(params[:admin_fund])
        format.html { redirect_to @admin_fund, notice: 'Fund was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/funds/1
  # DELETE /admin/funds/1.json
  def destroy
    @admin_fund = Fund.find(params[:id])
    @admin_fund.destroy

    respond_to do |format|
      format.html { redirect_to admin_funds_url }
      format.json { head :no_content }
    end
  end
end
