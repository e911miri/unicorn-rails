class LectureschedulesController < ApplicationController
  # GET /lectureschedules
  # GET /lectureschedules.json
  before_filter :authenticateadmin!
  layout "adminlayout"
  def index
    @lectureschedules = Lectureschedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lectureschedules }
    end
  end

  # GET /lectureschedules/1
  # GET /lectureschedules/1.json
  def show
    @lectureschedule = Lectureschedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lectureschedule }
    end
  end

  # GET /lectureschedules/new
  # GET /lectureschedules/new.json
  def new
    @lectureschedule = Lectureschedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lectureschedule }
    end
  end

  # GET /lectureschedules/1/edit
  def edit
    @lectureschedule = Lectureschedule.find(params[:id])
  end

  # POST /lectureschedules
  # POST /lectureschedules.json
  def create
    @lectureschedule = Lectureschedule.new(params[:lectureschedule])

    respond_to do |format|
      if @lectureschedule.save
        format.html { redirect_to @lectureschedule, notice: 'Lectureschedule was successfully created.' }
        format.json { render json: @lectureschedule, status: :created, location: @lectureschedule }
      else
        format.html { render action: "new" }
        format.json { render json: @lectureschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lectureschedules/1
  # PUT /lectureschedules/1.json
  def update
    @lectureschedule = Lectureschedule.find(params[:id])

    respond_to do |format|
      if @lectureschedule.update_attributes(params[:lectureschedule])
        format.html { redirect_to @lectureschedule, notice: 'Lectureschedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lectureschedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lectureschedules/1
  # DELETE /lectureschedules/1.json
  def destroy
    @lectureschedule = Lectureschedule.find(params[:id])
    @lectureschedule.destroy

    respond_to do |format|
      format.html { redirect_to lectureschedules_url }
      format.json { head :no_content }
    end
  end
end
