class ProjectsController < InheritedResources::Base

  private

    def project_params
      params.require(:project).permit(:name, :summary, :description, :url, images: [])
    end

end
