class Email < ApplicationRecord
	belongs_to :contact, optional: true
end
