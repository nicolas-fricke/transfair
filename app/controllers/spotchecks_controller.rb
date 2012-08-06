class SpotchecksController < ApplicationController
  # GET /spotchecks
  # GET /spotchecks.json
  def index
    @spotchecks = Spotcheck.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spotchecks }
    end
  end

  # GET /spotchecks/1
  # GET /spotchecks/1.json
  def show
    @spotcheck = Spotcheck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spotcheck }
    end
  end

  # GET /spotchecks/new
  # GET /spotchecks/new.json
  def new
    @spotcheck = Spotcheck.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spotcheck }
    end
  end

  # GET /spotchecks/1/edit
  def edit
    @spotcheck = Spotcheck.find(params[:id])
  end

  # POST /spotchecks
  # POST /spotchecks.json
  def create
    @spotcheck = Spotcheck.new(params[:spotcheck])

    respond_to do |format|
      if @spotcheck.save
        format.html { redirect_to @spotcheck, notice: 'Spotcheck was successfully created.' }
        format.json { render json: @spotcheck, status: :created, location: @spotcheck }
      else
        format.html { render action: "new" }
        format.json { render json: @spotcheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spotchecks/1
  # PUT /spotchecks/1.json
  def update
    @spotcheck = Spotcheck.find(params[:id])

    respond_to do |format|
      if @spotcheck.update_attributes(params[:spotcheck])
        format.html { redirect_to @spotcheck, notice: 'Spotcheck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spotcheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotchecks/1
  # DELETE /spotchecks/1.json
  def destroy
    @spotcheck = Spotcheck.find(params[:id])
    @spotcheck.destroy

    respond_to do |format|
      format.html { redirect_to spotchecks_url }
      format.json { head :no_content }
    end
  end
end
