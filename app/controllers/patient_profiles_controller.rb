class PatientProfilesController < ApplicationController
  before_filter :load_patient


    def edit
      puts("pppppppprrrrrrrrrrrrrrrrrrrrrrooooooooooooooooooooffffffffffffi")
    @patient_profile = @patient.patient_profile
  end

    private
    def load_patient
      @patient = Patient.find(params[:patient_id])
    end  

end