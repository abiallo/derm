class DhermatologicVisit < ActiveRecord::Base
  attr_accessible :chief_complaint, :diagnosis, :ex_general, :history_illness, :medication, :patient_id, :procedures, :visit_date, :weight
  validates :chief_complaint, :presence => true
  
  belongs_to :patient
end
