class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @item = Menu.find(params[:menu])
    @order = Order.new
    @order.delivery_cost = 20000
    @order.total_cost = @order.delivery_cost + @item.price
  end

  def create
    @item = Menu.find(params[:menu_id]);
    @order = Order.new(order_params)
    @order.delivery_cost = 20000
    @order.total_cost = @order.delivery_cost + @item.price
    @order.menu = @item

    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:customer_name, :phone_number, :address)
  end
end
