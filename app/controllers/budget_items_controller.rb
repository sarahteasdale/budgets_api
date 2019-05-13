class BudgetItemsController < ApplicationController
    before_action :authenticate_user
  
    def index
      @items = current_user.budget_items.includes(:service)
    end
  
    def create
      @item = current_user.budget_items.new(item_params)
      if @item.save
        render status: :created
      else
        render json: { errors: @item.errors }, status: :unprocessable_entity
      end
    end
  
  private
  
    def item_params
      params.require(:budget_item).permit(:service_id)
    end
  end
  
  