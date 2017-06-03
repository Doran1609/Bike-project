class MycartsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def edit
     @mycart = Mycart.find(params[:id])
  end
  def add
          id = params[:id]
              @mycart = Mycart.new
              @mycart.user_id = current_user.id
              @mycart.product_id = id
              
              @mycart.save
            @post = Mycart.order("created_at").last
             redirect_to controller: 'Mycarts', action: 'edit', id: @post.id, something: 'else'
         
  end

end
