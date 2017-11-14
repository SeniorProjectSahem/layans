class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :user_type
  has_many :rental_requests
  has_many :rentals
  has_many :items
  has_many :notifications, foreign_key: :recipient_id
  
  #scopes
  scope :current_borrowed_items,      ->(user_id) { Rental.where("user_id = ?", user_id).where("start_date<= ?", Date.today).where("end_date>= ?", Date.today).where("status = ?","accepted") }
  scope :past_borrowed_items,      ->(user_id) { Rental.where("user_id = ?", user_id).where("end_date<= ?", Date.today).where("status = ?","accepted") }
  scope :pending_requests,      ->(user_id) { Rental.where("user_id = ?", user_id).where("end_date<= ?", Date.today).where("status = ?","pending") }
  scope :test, -> (user_id) { Item.joins(:users).where("user_id = ?", user_id) }
  scope :Rental_request,      ->(user_id) { Rental.joins(:test).where("status = ?","pending") }

  #scope :Rental_request,       ->(user_id) { joins(:items).where(items: {user_id: user_id}).joins}
  
  
  def name
    "#{first_name} #{last_name}"
  end
end
