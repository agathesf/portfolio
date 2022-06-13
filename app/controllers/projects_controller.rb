class ProjectsController < ApplicationController
	def index
		@projects = Project.all		
	end

	def show
		@project = Project.find(params[:id])		
	end

	private

	  def project_params
	    params.require(:project).permit(:title, :description, :date, photos: [])
	  end
end