class CheeseController < ApplicationController
    # Mapped to get /cheese.
    # Default looks for folder of same controller name 
    # with view file index.html.erb in app/views.
    
    # To return JSON use render method.
    def index
        # byebug
        
        # render json: { hello: "Cheeseburger!!!", today: "Thursday"}

        # cheeses = Cheese.all
        # render json: cheeses
        
        # Returns all rows, each as hash.
        cheeses = Cheese.all
        # Serialization.
        # render json: cheeses, only: [:id, :name, :price, :is_best_seller]
        render json: cheeses, except: [:created_at, :updated_at]
        
    end
    # Return JSON by :id param.
    def show
        # byebug    
        # cheese = Cheese.find(params[:id])
        # render json: cheese

        ## Returns hash of row in db table
        cheese = Cheese.find_by(id: params[:id])
        # Returns custom JSON.
        render json: {
            id: cheese.id,
            name: cheese.name,
            price: cheese.price,
            is_best_seller: cheese.is_best_seller
        }
   
    end

end