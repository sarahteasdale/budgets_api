class BudgetTypesController < ApplicationController
    before_action :authenticate_user
    before_action :set_service
  
    def index
      @budget_types = current_user.budget_types.where(service: @service)
    end
  
    def create
      @budget_type = current_user.budget_types.new(budget_types_params)
      @budget_type.service = @service
      if @budget_type.save
        render status: :created
      else
        render json: { errors: @budget_type.errors }, status: :unprocessable_entity
      end
    end
  
  private
  
    def set_service
      @service = Service.find(params[:services_id])
    end
  
    def budget_types_params
      params.require(:budget_type).permit(:budgetType, :start_date, :end_date)
    end
  end
  
  