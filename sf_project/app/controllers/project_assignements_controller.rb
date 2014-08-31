class ProjectAssignementsController < ApplicationController
  # GET /project_assignements
  # GET /project_assignements.json
  def index
    @project_assignements = ProjectAssignement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @project_assignements }
    end
  end

  # GET /project_assignements/1
  # GET /project_assignements/1.json
  def show
    @project_assignement = ProjectAssignement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project_assignement }
    end
  end

  # GET /project_assignements/new
  # GET /project_assignements/new.json
  def new
    @project_assignement = ProjectAssignement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project_assignement }
    end
  end

  # GET /project_assignements/1/edit
  def edit
    @project_assignement = ProjectAssignement.find(params[:id])
  end

  # POST /project_assignements
  # POST /project_assignements.json
  def create
    @project_assignement = ProjectAssignement.new(params[:project_assignement])

    respond_to do |format|
      if @project_assignement.save
        format.html { redirect_to @project_assignement, notice: 'Project assignement was successfully created.' }
        format.json { render json: @project_assignement, status: :created, location: @project_assignement }
      else
        format.html { render action: "new" }
        format.json { render json: @project_assignement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /project_assignements/1
  # PUT /project_assignements/1.json
  def update
    @project_assignement = ProjectAssignement.find(params[:id])

    respond_to do |format|
      if @project_assignement.update_attributes(params[:project_assignement])
        format.html { redirect_to @project_assignement, notice: 'Project assignement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project_assignement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_assignements/1
  # DELETE /project_assignements/1.json
  def destroy
    @project_assignement = ProjectAssignement.find(params[:id])
    @project_assignement.destroy

    respond_to do |format|
      format.html { redirect_to project_assignements_url }
      format.json { head :no_content }
    end
  end
end
