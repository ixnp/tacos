class TacosController < ApplicationController
    def index
        @tacos = Taco.all
    end 

    def show
        @taco = Taco.find(params[:id])
    end 
    
    def create 
    end 

    def edit
        @taco = Taco.find(params[:id])
    end 

    def update
        @taco = Taco.find(params[:id])
        @taco.update(taco_params)
        redirect_to '/tacos'
    end

    private 

    def taco_params
    
        params.permit(:meat, :zest, :spicy)
    end 
end
