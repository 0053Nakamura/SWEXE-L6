class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new(product_id: params[:product_id])
    end
    
    def create
        cart = Cartitem.new(
            qty: params[:cartitem][:qty],
            product_id: params[:cartitem][:product_id],
            cart_id: current_cart.id
            )
        cart.save 
        redirect_to root_path
    end
    
    def destroy
        cartitem = Cartitem.find(params[:id])
        cartitem.destroy
        redirect_to cart_path
    end
end
