class ServicesController < ApplicationController
    def new
      @service = Service.new
    end

    def index
        @services = Service.all
      end
  
    def create
        @service = Service.new(service_params)
        if @service.save
          flash[:notice] = "Service created successfully!"
          redirect_to service_path(@service)   # go to the show page instead of index
        else
          render :new
        end
      end
  
    def show
      @service = Service.find(params[:id])
    end
  
    def destroy
      @service = Service.find(params[:id])
      @service.destroy
      flash[:notice] = "Service '#{@service.title}' deleted."
      redirect_to services_path  
    end
  
    private
  
    def service_params
      params.require(:service).permit(:title, :description, :price, :poster)
    end
  end
  