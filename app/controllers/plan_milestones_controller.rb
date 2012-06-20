class PlanMilestonesController < ApplicationController
  layout "plan"
  before_filter :authenticate_plan_user!
  # GET /plan_milestones
  # GET /plan_milestones.json
  def index
    @plan_milestones = PlanMilestone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_milestones }
    end
  end

  # GET /plan_milestones/1
  # GET /plan_milestones/1.json
  def show
    @plan_milestone = PlanMilestone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_milestone }
    end
  end

  # GET /plan_milestones/new
  # GET /plan_milestones/new.json
  def new
    @plan_milestone = PlanMilestone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_milestone }
    end
  end

  # GET /plan_milestones/1/edit
  def edit
    @plan_milestone = PlanMilestone.find(params[:id])
  end

  # POST /plan_milestones
  # POST /plan_milestones.json
  def create
    @plan_milestone = PlanMilestone.new(params[:plan_milestone])

    respond_to do |format|
      if @plan_milestone.save
        format.html { redirect_to @plan_milestone, notice: 'Plan milestone was successfully created.' }
        format.json { render json: @plan_milestone, status: :created, location: @plan_milestone }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_milestones/1
  # PUT /plan_milestones/1.json
  def update
    @plan_milestone = PlanMilestone.find(params[:id])

    respond_to do |format|
      if @plan_milestone.update_attributes(params[:plan_milestone])
        format.html { redirect_to @plan_milestone, notice: 'Plan milestone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_milestones/1
  # DELETE /plan_milestones/1.json
  def destroy
    @plan_milestone = PlanMilestone.find(params[:id])
    @plan_milestone.destroy

    respond_to do |format|
      format.html { redirect_to plan_milestones_url }
      format.json { head :no_content }
    end
  end
end
