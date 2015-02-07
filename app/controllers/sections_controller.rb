class SectionsController < ApplicationController
	def section_params
		params.require(:section).permit(:title, :summary, :image_file_name)
	end

	def index
		@sections = Section.all
	end

	def new
		@section = Section.new
	end

	def create
		@section = Section.new(section_params)
		@section.save
		redirect_to @section
	end	

	def edit
		@section = Section.find(params[:id])		
	end

	def update
		@section = Section.find(params[:id])
		if @section.update(section_params)
			redirect_to @section
		else
			render :edit
		end
	end

	def show
		@section = Section.find(params[:id])
		@subsections = @section.subsections
	end

	def destroy
		@section = Section.find(params[:id])
		@section.destroy
		redirect_to sections_path
	end
end