class FinancesController < ApplicationController
  before_action :set_finance, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  respond_to :html

  def index
    @finances = Finance.all
    respond_with(@finances)
  end

  def show
    respond_with(@finance)
  end

  def new
    @finance = current_user.finances.build
    respond_with(@finance)
  end

  def edit
  end

  def create
    @finance = current_user.finances.build(finance_params)
    @finance.save
    respond_with(@finance)
  end

  def update
    @finance.update(finance_params)
    respond_with(@finance)
  end

  def destroy
    @finance.destroy
    respond_with(@finance)
  end

  private
    def set_finance
      @finance = Finance.find_by(params[:id])
    end
	
	def correct_user
	  @finance = current_user.finances.find_by(id: params[:id])
	  redirect_to finances_path, notice: "Not authorized to edit this" if @finance.nil?
    end

    def finance_params
      params.require(:finance).permit(:audit, :cash_amount, :check_amount, :check_number, :data_entry, :note, :supporter_name)
    end
end
