class OrdersController < ApplicationController
  def create; end

  def my_order
    render json: { order: Order.where(useraccount: @current_user).to_json({ except: %i[created_at updated_at] }) },
           status: 200
  end

  def ordered_item
    render json: { orders: Order.includes(:item).where(item: @current_user.item_ids) }, status: 200
  end
end
