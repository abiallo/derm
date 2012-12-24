class PatientProfile < ActiveRecord::Base
  attr_accessible :h_cancer, :h_none, :h_others, :patient_id
  
  belongs_to :patient

end
