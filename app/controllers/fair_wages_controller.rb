class FairWagesController < ApplicationController
  # GET /fair_wages
  # GET /fair_wages.json
  def index
    @fair_wages = FairWage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fair_wages }
    end
  end

  # GET /fair_wages/1
  # GET /fair_wages/1.json
  def show
    @fair_wage = FairWage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fair_wage }
    end
  end

  # GET /fair_wages/new
  # GET /fair_wages/new.json
  def new
    @fair_wage = FairWage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fair_wage }
    end
  end

  # GET /fair_wages/1/edit
  def edit
    @fair_wage = FairWage.find(params[:id])
  end

  # POST /fair_wages
  # POST /fair_wages.json
  def create
    @fair_wage = FairWage.new(params[:fair_wage])

    respond_to do |format|
      if @fair_wage.save
        format.html { redirect_to @fair_wage, notice: 'Fair wage was successfully created.' }
        format.json { render json: @fair_wage, status: :created, location: @fair_wage }
      else
        format.html { render action: "new" }
        format.json { render json: @fair_wage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fair_wages/1
  # PUT /fair_wages/1.json
  def update
    @fair_wage = FairWage.find(params[:id])

    respond_to do |format|
      if @fair_wage.update_attributes(params[:fair_wage])
        format.html { redirect_to @fair_wage, notice: 'Fair wage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fair_wage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fair_wages/1
  # DELETE /fair_wages/1.json
  def destroy
    @fair_wage = FairWage.find(params[:id])
    @fair_wage.destroy

    respond_to do |format|
      format.html { redirect_to fair_wages_url }
      format.json { head :no_content }
    end
  end
end
