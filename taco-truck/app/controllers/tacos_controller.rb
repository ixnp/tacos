class TacosController < ApplicationController
    def index
        @tacos = Taco.all
    end 

    def show
        @taco = Taco.find(params[:id])
    end 

    def new
        @taco = Taco.new
        @trucks = Truck.all
        
    end 
    
    def create 
        @taco = Taco.create(taco_params)
        if @taco.valid?
            redirect_to taco_path(@taco)
          else
            flash[:notice] = @taco.errors.full_messages
            redirect_to new_taco_path
        end
    end 

    def edit
        @taco = Taco.find(params[:id])
        @trucks = Truck.all

    end 

    def update
        @taco = Taco.find(params[:id])
        @taco.update(taco_params)
        redirect_to '/tacos'
    end

    private 

    def taco_params
         
        params.require(:taco).permit(:meat, :zest, :spicy, :truck_id)
    end 
end
