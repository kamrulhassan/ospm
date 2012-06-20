class PlanWorkpackagesController < ApplicationController
  layout "plan"
  # GET /plan_workpackages
  # GET /plan_workpackages.json
  def index
    @plan_workpackages = PlanWorkpackage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_workpackages }
    end
  end

  # GET /plan_workpackages/1
  # GET /plan_workpackages/1.json
  def show
    @plan_workpackage = PlanWorkpackage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_workpackage }
    end
  end

  # GET /plan_workpackages/new
  # GET /plan_workpackages/new.json
  def new
    @plan_workpackage = PlanWorkpackage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_workpackage }
    end
  end

  # GET /plan_workpackages/1/edit
  def edit
    @plan_workpackage = PlanWorkpackage.find(params[:id])
  end

  # POST /plan_workpackages
  # POST /plan_workpackages.json
  def create
    @plan_workpackage = PlanWorkpackage.new(params[:plan_workpackage])

    respond_to do |format|
      if @plan_workpackage.save
        format.html { redirect_to @plan_workpackage, notice: 'Plan workpackage was successfully created.' }
        format.json { render json: @plan_workpackage, status: :created, location: @plan_workpackage }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_workpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_workpackages/1
  # PUT /plan_workpackages/1.json
  def update
    @plan_workpackage = PlanWorkpackage.find(params[:id])

    respond_to do |format|
      if @plan_workpackage.update_attributes(params[:plan_workpackage])
        format.html { redirect_to @plan_workpackage, notice: 'Plan workpackage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_workpackage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_workpackages/1
  # DELETE /plan_workpackages/1.json
  def destroy
    @plan_workpackage = PlanWorkpackage.find(params[:id])
    @plan_workpackage.destroy

    respond_to do |format|
      format.html { redirect_to plan_workpackages_url }
      format.json { head :no_content }
    end
  end
end
