class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
  private
    def order_item_params
      params.require(:order_item).permit(:quantity, :custom_snapback_id, :order_id, :unit_price, :total_price, :custom_strapback_hat_id, :custom_athletic_hat_id, :custom_beanies_id, :custom_bucket_hat_id, :custom_camo_hat_id, :custom_fitted_hat_id, :custom_golf_hat_id, :custom_military_hat_id, :custom_panel_hat_id, :custom_trucker_hat_id)
    end
end
