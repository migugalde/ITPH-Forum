class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
      
      if @resource.save
         redirect_to resources_index_path, notice: "The file #{@resource.name} has been uploaded."
      else
         render "new"
      end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    redirect_to resources_path, notice:  "The file #{@resource.name} has been deleted."
  end
  
   private
      def resource_params
        params.require(:resource).permit(:name, :attachment)
      end
   
end
