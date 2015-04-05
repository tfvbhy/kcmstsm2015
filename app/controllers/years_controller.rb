class YearsController < ApplicationController
  before_action :set_year, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @years = Year.all
    respond_with(@years)
  end

  def show
    respond_with(@year)
  end

  def new
    @year = Year.new
    respond_with(@year)
  end

  def edit
  end

  def create
    @year = Year.new(year_params)
    @year.save
    respond_with(@year)
  end

  def update
    @year.update(year_params)
    respond_with(@year)
  end

  def destroy
    @year.destroy
    respond_with(@year)
  end

  private
    def set_year
      @year = Year.find(params[:id])
    end

    def year_params
      params.require(:year).permit(:year)
    end
end
