class PlanResourcesController < ApplicationController
  layout "plan"
  before_filter :authenticate_plan_user!
  # GET /plan_resources
  # GET /plan_resources.json
  def index
    @plan_resources = PlanResource.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_resources }
    end
  end

  # GET /plan_resources/1
  # GET /plan_resources/1.json
  def show
    @plan_resource = PlanResource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_resource }
    end
  end

  # GET /plan_resources/new
  # GET /plan_resources/new.json
  def new
    @plan_resource = PlanResource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_resource }
    end
  end

  # GET /plan_resources/1/edit
  def edit
    @plan_resource = PlanResource.find(params[:id])
  end

  # POST /plan_resources
  # POST /plan_resources.json
  def create
    @plan_resource = PlanResource.new(params[:plan_resource])

    respond_to do |format|
      if @plan_resource.save
        format.html { redirect_to @plan_resource, notice: 'Plan resource was successfully created.' }
        format.json { render json: @plan_resource, status: :created, location: @plan_resource }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_resources/1
  # PUT /plan_resources/1.json
  def update
    @plan_resource = PlanResource.find(params[:id])

    respond_to do |format|
      if @plan_resource.update_attributes(params[:plan_resource])
        format.html { redirect_to @plan_resource, notice: 'Plan resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_resources/1
  # DELETE /plan_resources/1.json
  def destroy
    @plan_resource = PlanResource.find(params[:id])
    @plan_resource.destroy

    respond_to do |format|
      format.html { redirect_to plan_resources_url }
      format.json { head :no_content }
    end
  end
end
