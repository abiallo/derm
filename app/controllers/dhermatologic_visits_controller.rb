class DhermatologicVisitsController < ApplicationController
  before_filter :load_patient
  # GET /dhermatologic_visits
  # GET /dhermatologic_visits.json
  def index
    @dhermatologic_visits = @patient.dhermatologic_visits.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dhermatologic_visits }
    end
  end

  # GET /dhermatologic_visits/1
  # GET /dhermatologic_visits/1.json
  def show
    @dhermatologic_visit = @patient.dhermatologic_visits.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dhermatologic_visit }
    end
  end

  # GET /dhermatologic_visits/new
  # GET /dhermatologic_visits/new.json
  def new
    @dhermatologic_visit = @patient.dhermatologic_visits.new

    respond_to do |format|
      format.html # new.html.erb
      format.js
      format.json { render json: @dhermatologic_visit }
    end
  end

  # GET /dhermatologic_visits/1/edit
  def edit
    @dhermatologic_visit = @patient.dhermatologic_visits.find(params[:id])
  end

  # POST /dhermatologic_visits
  # POST /dhermatologic_visits.json
  def create
    @dhermatologic_visit = @patient.dhermatologic_visits.new(params[:dhermatologic_visit])

    respond_to do |format|
      if @dhermatologic_visit.save
        format.html { redirect_to @patient, notice: 'Dhermatologic visit was successfully created.' }
        format.json { render json: @dhermatologic_visit, status: :created, location: @dhermatologic_visit }
      else
        format.html { render action: "new" }
        format.json { render json: @dhermatologic_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dhermatologic_visits/1
  # PUT /dhermatologic_visits/1.json
  def update
    @dhermatologic_visit = @patient.dhermatologic_visits.find(params[:id])

    respond_to do |format|
      if @dhermatologic_visit.update_attributes(params[:dhermatologic_visit])
        format.html { redirect_to @patient, notice: 'Dhermatologic visit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dhermatologic_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dhermatologic_visits/1
  # DELETE /dhermatologic_visits/1.json
  def destroy
    @dhermatologic_visit = @patient.dhermatologic_visits.find(params[:id])
    @dhermatologic_visit.destroy

    respond_to do |format|
      format.html { redirect_to @patient, :notice => "dhermatologic visit deleted" }
      format.json { head :no_content }
    end
  end
  private
    def load_patient
      @patient = Patient.find(params[:patient_id])
    end  
end
