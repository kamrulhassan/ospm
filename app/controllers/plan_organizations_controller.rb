class PlanOrganizationsController < ApplicationController
    layout "plan"
  # GET /plan_organizations
  # GET /plan_organizations.json
  def index
    @plan_organizations = PlanOrganization.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plan_organizations }
    end
  end

  # GET /plan_organizations/1
  # GET /plan_organizations/1.json
  def show
    @plan_organization = PlanOrganization.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan_organization }
    end
  end

  # GET /plan_organizations/new
  # GET /plan_organizations/new.json
  def new
    @plan_organization = PlanOrganization.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plan_organization }
    end
  end

  # GET /plan_organizations/1/edit
  def edit
    @plan_organization = PlanOrganization.find(params[:id])
  end

  # POST /plan_organizations
  # POST /plan_organizations.json
  def create
    @plan_organization = PlanOrganization.new(params[:plan_organization])

    respond_to do |format|
      if @plan_organization.save
        format.html { redirect_to @plan_organization, notice: 'Plan organization was successfully created.' }
        format.json { render json: @plan_organization, status: :created, location: @plan_organization }
      else
        format.html { render action: "new" }
        format.json { render json: @plan_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plan_organizations/1
  # PUT /plan_organizations/1.json
  def update
    @plan_organization = PlanOrganization.find(params[:id])

    respond_to do |format|
      if @plan_organization.update_attributes(params[:plan_organization])
        format.html { redirect_to @plan_organization, notice: 'Plan organization was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plan_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_organizations/1
  # DELETE /plan_organizations/1.json
  def destroy
    @plan_organization = PlanOrganization.find(params[:id])
    @plan_organization.destroy

    respond_to do |format|
      format.html { redirect_to plan_organizations_url }
      format.json { head :no_content }
    end
  end
end
