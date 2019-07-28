class Phone < ApplicationRecord
	belongs_to :contact, optional: true
	#validates_format_of :phone, :with =>  /\d[0-9]\)*\z/
	attr_accessible :phone, :label
	validates :phone,:presence => true,	
					:length => { :minimum => 7, :maximum => 10 }, 
					format: { :with =>  /\d[0-9]\)*\z/ }
end
