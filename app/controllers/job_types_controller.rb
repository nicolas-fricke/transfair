class JobTypesController < ApplicationController
  # GET /job_types
  # GET /job_types.json
  def index
    @job_types = JobType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_types }
    end
  end

  # GET /job_types/1
  # GET /job_types/1.json
  def show
    @job_type = JobType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_type }
    end
  end

  # GET /job_types/new
  # GET /job_types/new.json
  def new
    @job_type = JobType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_type }
    end
  end

  # GET /job_types/1/edit
  def edit
    @job_type = JobType.find(params[:id])
  end

  # POST /job_types
  # POST /job_types.json
  def create
    @job_type = JobType.new(params[:job_type])

    respond_to do |format|
      if @job_type.save
        format.html { redirect_to @job_type, notice: 'Job type was successfully created.' }
        format.json { render json: @job_type, status: :created, location: @job_type }
      else
        format.html { render action: "new" }
        format.json { render json: @job_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_types/1
  # PUT /job_types/1.json
  def update
    @job_type = JobType.find(params[:id])

    respond_to do |format|
      if @job_type.update_attributes(params[:job_type])
        format.html { redirect_to @job_type, notice: 'Job type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_types/1
  # DELETE /job_types/1.json
  def destroy
    @job_type = JobType.find(params[:id])
    @job_type.destroy

    respond_to do |format|
      format.html { redirect_to job_types_url }
      format.json { head :no_content }
    end
  end
end
