class TranscriptionInformationsController < ApplicationController
  # GET /transcription_informations
  # GET /transcription_informations.json
  def index
    @transcription_informations = TranscriptionInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @transcription_informations }
    end
  end

  # GET /transcription_informations/1
  # GET /transcription_informations/1.json
  def show
    @transcription_information = TranscriptionInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @transcription_information }
    end
  end

  # GET /transcription_informations/new
  # GET /transcription_informations/new.json
  def new
    @transcription_information = TranscriptionInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @transcription_information }
    end
  end

  # GET /transcription_informations/1/edit
  def edit
    @transcription_information = TranscriptionInformation.find(params[:id])
  end

  # POST /transcription_informations
  # POST /transcription_informations.json
  def create
    @transcription_information = TranscriptionInformation.new(params[:transcription_information])

    respond_to do |format|
      if @transcription_information.save
        format.html { redirect_to @transcription_information, notice: 'Transcription information was successfully created.' }
        format.json { render json: @transcription_information, status: :created, location: @transcription_information }
      else
        format.html { render action: "new" }
        format.json { render json: @transcription_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /transcription_informations/1
  # PUT /transcription_informations/1.json
  def update
    @transcription_information = TranscriptionInformation.find(params[:id])

    respond_to do |format|
      if @transcription_information.update_attributes(params[:transcription_information])
        format.html { redirect_to @transcription_information, notice: 'Transcription information was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @transcription_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcription_informations/1
  # DELETE /transcription_informations/1.json
  def destroy
    @transcription_information = TranscriptionInformation.find(params[:id])
    @transcription_information.destroy

    respond_to do |format|
      format.html { redirect_to transcription_informations_url }
      format.json { head :no_content }
    end
  end
end
