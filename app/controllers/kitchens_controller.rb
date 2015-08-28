class KitchensController < ApplicationController
  before_action :set_kitchen, only: [:show, :edit, :update, :destroy]

  # GET /kitchens
  # GET /kitchens.json
  def index
    @kitchens = Kitchen.all
  end

  # GET /kitchens/1
  # GET /kitchens/1.json
  def show
  end


  def get_countries

  @countryy= Country.where(:kitchen_id  => params[:id])

  end
 helper_method :get_countries
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen
      @kitchen = Kitchen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitchen_params
      params.require(:kitchen).permit(:kitchen_name, :kitchen_id)
    end
end