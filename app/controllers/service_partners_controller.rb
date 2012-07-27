class ServicePartnersController < ApplicationController
  # GET /service_partners
  # GET /service_partners.json
  def index
    @service_partners = ServicePartner.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @service_partners }
    end
  end

  # GET /service_partners/1
  # GET /service_partners/1.json
  def show
    @service_partner = ServicePartner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @service_partner }
    end
  end

  # GET /service_partners/new
  # GET /service_partners/new.json
  def new
    @service_partner = ServicePartner.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @service_partner }
    end
  end

  # GET /service_partners/1/edit
  def edit
    @service_partner = ServicePartner.find(params[:id])
  end

  # POST /service_partners
  # POST /service_partners.json
  def create
    @service_partner = ServicePartner.new(params[:service_partner])

    respond_to do |format|
      if @service_partner.save
        format.html { redirect_to @service_partner, notice: 'Service partner was successfully created.' }
        format.json { render json: @service_partner, status: :created, location: @service_partner }
      else
        format.html { render action: "new" }
        format.json { render json: @service_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /service_partners/1
  # PUT /service_partners/1.json
  def update
    @service_partner = ServicePartner.find(params[:id])

    respond_to do |format|
      if @service_partner.update_attributes(params[:service_partner])
        format.html { redirect_to @service_partner, notice: 'Service partner was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @service_partner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_partners/1
  # DELETE /service_partners/1.json
  def destroy
    @service_partner = ServicePartner.find(params[:id])
    @service_partner.destroy

    respond_to do |format|
      format.html { redirect_to service_partners_url }
      format.json { head :no_content }
    end
  end
end
