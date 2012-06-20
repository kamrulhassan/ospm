class PlanProjectsController < ApplicationController
    layout "plan"
    before_filter :authenticate_plan_user!
    load_and_authorize_resource
  # GET /plan_projects
  # GET /plan_projects.json
  def index
    @plan_projects = PlanProject.all
    # need to change the bellow line - move to 
    # sign_out current_user

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_projects }
    end
  end

  # GET /plan_projects/1
  # GET /plan_projects/1.json
  def show
    @plan_project = PlanProject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_project }
    end
  end

  # GET /plan_projects/new
  # GET /plan_projects/new.json
  def new
    @plan_project = PlanProject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_project }
    end
  end

  # GET /plan_projects/1/edit
  def edit
    @plan_project = PlanProject.find(params[:id])
  end

  # POST /plan_projects
  # POST /plan_projects.json
  def create
    @plan_project = PlanProject.new(params[:plan_project])

    respond_to do |format|
      if @plan_project.save
        format.html { redirect_to @plan_project, notice: 'Plan project was successfully created.' }
        format.json { render json: @plan_project, status: :created, location: @plan_project }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_projects/1
  # PUT /plan_projects/1.json
  def update
    @plan_project = PlanProject.find(params[:id])

    respond_to do |format|
      if @plan_project.update_attributes(params[:plan_project])
        format.html { redirect_to @plan_project, notice: 'Plan project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_projects/1
  # DELETE /plan_projects/1.json
  def destroy
    @plan_project = PlanProject.find(params[:id])
    @plan_project.destroy

    respond_to do |format|
      format.html { redirect_to plan_projects_url }
      format.json { head :no_content }
    end
  end

  def publish
    @plan_project =  PlanProject.find(params[:id])
    
    create_repo_project(@plan_project)

    respond_to do |format|
      format.html { redirect_to plan_project_url(@plan_project) }
      format.json { head :no_content }
    end
  end
end
