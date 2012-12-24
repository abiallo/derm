class Article < ActiveRecord::Base
  attr_accessible :body, :picture, :title
  validates :title, :presence => true
  validates :body, :presence => true
  
  belongs_to :user
  
    def owned_by?(owner)
      return false unless owner.is_a? User
    user == owner
  end
end
