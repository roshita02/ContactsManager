class Contact < ApplicationRecord
	belongs_to :user
	has_many :phone, dependent: :destroy 
    has_many :email, dependent: :destroy
    accepts_nested_attributes_for :phone,allow_destroy: true
    accepts_nested_attributes_for :email,allow_destroy: true
    validates :firstname, :lastname, :address, :presence=> true, :length => { :minimum => 3, :maximum => 20 } 
end
