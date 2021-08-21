class ProjectsController < InheritedResources::Base
  def index
    @projects = Project.last(10)
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end

  private

    def project_params
      params.require(:project).permit(:name, :summary, :description, :url, images: [])
    end

end
