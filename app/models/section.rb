class Section < ActiveRecord::Base
	has_many :subsections, dependent: :destroy
end
