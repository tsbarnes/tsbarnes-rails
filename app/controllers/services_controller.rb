class ServicesController < InheritedResources::Base

  private

  def service_params
    params.require(:service).permit(:name, :summary, :description, :price, :image)
  end
end
