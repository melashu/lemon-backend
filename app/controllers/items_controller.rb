class ItemsController < ApplicationController
  before_action :get_item, only: %i[update show destroy]

  def index
    render json: @current_user.items.as_json({ except: %i[updated_at created_at], include: %i[orders] }), status: 200
  end

  def create
    new_item = @current_user.items.new item_prams
    if new_item.save
      render json: { message: 'Successfuly created!' }, status: 200
    else
      render json: { message: 'Error happened', error: new_item.errors.full_messages }, status: 403
    end
  end

  def update
    get_item.update!(item_prams)
    render json: { message: 'Successfuly updated' }, status: 200
  rescue StandardError => e
    render json: { message: 'Error happned', error: e.message }
  end

  def show
    render json:  ItemSerializer.new(get_item).serializable_hash, status: 200
  end

  def destroy
    get_item.destroy
    render json: { message: 'Successfuly deleted' }, status: 200
  rescue StandardError => e
    render json: { error: e.message }, status: 422
  end

  def get_others_item;
    items = Item.includes(:useraccount).where.not(useraccount: @current_user)
      .where('quantity > 0')
     render json: ItemSerializer.new(items).serializable_hash, status: 200
  end

  def public_item
    render json: { items: Item.includes(:useraccount).where('quantity > ?', 0).as_json({ except: %i[created_at updated_at ], 
      include: { useraccount: { except: %i[created_at updated_at password_digest] } } }) },
           status: 200
  end

  private

  def item_prams
    params.permit(:name, :model, :price, :photo, :description, :quantity, :images)
  end

  def get_item
    @current_user.items.find(params[:id])
  end
end
