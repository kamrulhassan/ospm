class PlanDeliverablesController < ApplicationController
  layout "plan"
  before_filter :authenticate_plan_user!
  # GET /plan_deliverables
  # GET /plan_deliverables.json
  def index
    @plan_deliverables = PlanDeliverable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_deliverables }
    end
  end

  # GET /plan_deliverables/1
  # GET /plan_deliverables/1.json
  def show
    @plan_deliverable = PlanDeliverable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_deliverable }
    end
  end

  # GET /plan_deliverables/new
  # GET /plan_deliverables/new.json
  def new
    @plan_deliverable = PlanDeliverable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_deliverable }
    end
  end

  # GET /plan_deliverables/1/edit
  def edit
    @plan_deliverable = PlanDeliverable.find(params[:id])
  end

  # POST /plan_deliverables
  # POST /plan_deliverables.json
  def create
    @plan_deliverable = PlanDeliverable.new(params[:plan_deliverable])

    respond_to do |format|
      if @plan_deliverable.save
        format.html { redirect_to @plan_deliverable, notice: 'Plan deliverable was successfully created.' }
        format.json { render json: @plan_deliverable, status: :created, location: @plan_deliverable }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_deliverable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_deliverables/1
  # PUT /plan_deliverables/1.json
  def update
    @plan_deliverable = PlanDeliverable.find(params[:id])

    respond_to do |format|
      if @plan_deliverable.update_attributes(params[:plan_deliverable])
        format.html { redirect_to @plan_deliverable, notice: 'Plan deliverable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_deliverable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_deliverables/1
  # DELETE /plan_deliverables/1.json
  def destroy
    @plan_deliverable = PlanDeliverable.find(params[:id])
    @plan_deliverable.destroy

    respond_to do |format|
      format.html { redirect_to plan_deliverables_url }
      format.json { head :no_content }
    end
  end
end
