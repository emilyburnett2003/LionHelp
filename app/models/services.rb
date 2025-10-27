class Service < ActiveRecord::Base
    def show
        id = params[:id]
        @service = Service.find(id)
    end
    def index
        @services = Service.all
    end
    def new
        # default: render 'new' template
    end
    def create
        @service = Service.create!(service_params)
        flash[:notice] = "#{@service.title} was successfully created."
        redirect_to services_path
    end

    private

    # Note - for Part 1, you may need to modify this method.
    def service_params
        params.require(:service).permit(:title, :poster, :description)
    end
end
  