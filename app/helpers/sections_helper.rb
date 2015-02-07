module SectionsHelper
	def image_for(section)
		if section.image_file_name.blank?
			image_tag 'placeholder.jpg'
		else
			image_tag section.image_file_name
		end
	end
end
