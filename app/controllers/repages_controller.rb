class RepagesController < ApplicationController
   def index
      @repages = Repage.all
   end
   
   def new
      @repage = Repage.new
   end
   
   def create
      @repage = Repage.new(repage_params)
      
      if @repage.save
         redirect_to repages_path, notice: "The file #{@repage.name} has been uploaded."
      else
         render "new"
      end
      
   end
   
   def destroy
      @repage = Repage.find(params[:id])
      @repage.destroy
      redirect_to repages_path, notice:  "The file #{@repage.name} has been deleted."
   end
   
   private
      def repage_params
         params.require(:repage).permit(:name, :attachment)
      end
   
end
