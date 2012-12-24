class Patient < ActiveRecord::Base
  attr_accessible :date_of_birth, :first_name, :last_name, :mobile_number
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :date_of_birth, :presence => true
  validates :mobile_number, :presence => true
  
  has_one :patient_profile, :dependent => :destroy 
  belongs_to :user
  has_many :dhermatologic_visits, :order => "visit_date DESC", :dependent => :destroy
  
  def long_name
    first_name + ' '+last_name
  end
end