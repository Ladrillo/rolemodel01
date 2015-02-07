class SubsectionsController < ApplicationController
	def subsection_params
		params.require(:subsection).permit(:heading, :content, :image_file_name)
	end

	def index
		@section = Section.find(params[:section_id])
		@subsections = @section.subsections
	end

	def new
		@section = Section.find(params[:section_id])
		@subsection = @section.subsections.new
	end

	def create
		@section = Section.find(params[:section_id])
		@subsection = @section.subsections.new(subsection_params).save
		redirect_to section_subsections_path(@section)
	end

	def show
		@section = Section.find(params[:section_id])
		@subsection = @section.subsections.find(params[:id])
	end

	def edit
		@section = Section.find(params[:section_id])
		@subsection = @section.subsections.find(params[:id])
	end

	def update
		@section = Section.find(params[:section_id])
		@subsection = @section.subsections.find(params[:id])

		if @subsection.update(subsection_params)
			redirect_to section_subsection_path(@section, @subsection)
		else
			render :edit
		end
	end

	def destroy
		@section = Section.find(params[:section_id])
		@section.subsections.find(params[:id]).destroy
		redirect_to section_subsections_path(@section)
	end
end
