class CoursematerialsController < ApplicationController
  before_filter :authenticateadmin!
  layout "adminlayout"
  def index
    @coursematerials = Coursematerial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coursematerials }
    end
  end

  # GET /coursematerials/1
  # GET /coursematerials/1.json
  def show
    @coursematerial = Coursematerial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coursematerial }
    end
  end

  # GET /coursematerials/new
  # GET /coursematerials/new.json
  def new
    @coursematerial = Coursematerial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coursematerial }
    end
  end

  # GET /coursematerials/1/edit
  def edit
    @coursematerial = Coursematerial.find(params[:id])
  end

  # POST /coursematerials
  # POST /coursematerials.json
  def create
    @coursematerial = Coursematerial.new(params[:coursematerial])

    respond_to do |format|
      if @coursematerial.save
        format.html { redirect_to @coursematerial, notice: 'Coursematerial was successfully created.' }
        format.json { render json: @coursematerial, status: :created, location: @coursematerial }
      else
        format.html { render action: "new" }
        format.json { render json: @coursematerial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coursematerials/1
  # PUT /coursematerials/1.json
  def update
    @coursematerial = Coursematerial.find(params[:id])

    respond_to do |format|
      if @coursematerial.update_attributes(params[:coursematerial])
        format.html { redirect_to @coursematerial, notice: 'Coursematerial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coursematerial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursematerials/1
  # DELETE /coursematerials/1.json
  def destroy
    @coursematerial = Coursematerial.find(params[:id])
    @coursematerial.destroy

    respond_to do |format|
      format.html { redirect_to coursematerials_url }
      format.json { head :no_content }
    end
  end
end
