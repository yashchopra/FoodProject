class Business < ApplicationRecord
	has_many :foods, dependent: :destroy
end
