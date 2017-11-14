class Item < ActiveRecord::Base

  has_attached_file :image, styles:{large: "600x600>", medium:"300x300>"}
  validates_attachment_content_type :image, content_type:/\Aimage\/.*\Z/

 has_attached_file :image2, styles:{large: "600x600>", medium:"300x300>"}
  validates_attachment_content_type :image2, content_type:/\Aimage\/.*\Z/

  has_attached_file :image3, styles:{large: "600x600>", medium:"300x300>"}
  validates_attachment_content_type :image3, content_type:/\Aimage\/.*\Z/



  belongs_to :user
  belongs_to :category
  has_many :rentals
  #functions
  def prices
    price = Pricing.find(self.id)
    "#{price.daily}/per day, #{price.monthly}/per month, #{price.yearly}/per year"
  end
  
end