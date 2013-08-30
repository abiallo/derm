class Article < ActiveRecord::Base
  attr_accessible :body, :picture, :title
  validates :title, :presence => true
  validates :body, :presence => true
  
  belongs_to :user
  has_attached_file :picture,
                                 :styles => {
                                   :thumb => "75x75>",
                                   :small => "150x150>"
                                 }
  
    def owned_by?(owner)
      return false unless owner.is_a? User
    user == owner
  end
end
