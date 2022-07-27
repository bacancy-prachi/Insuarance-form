class InsuarancesController < ApplicationController
  before_action :set_insuarance, only: %i[ show edit update destroy ]

  def index
    @insuarances = Insuarance.all
  end

  def show
  end

  def new
    @insuarance = Insuarance.new
  end

  def edit
  end

  def create
    @insuarance = Insuarance.new(insuarance_params)

    respond_to do |format|
      if @insuarance.save
        format.html { redirect_to insuarance_url(@insuarance), notice: "Insuarance was successfully created." }
        format.json { render :show, status: :created, location: @insuarance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @insuarance.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @insuarance.update(insuarance_params)
        format.html { redirect_to insuarance_url(@insuarance), notice: "Insuarance was successfully updated." }
        format.json { render :show, status: :ok, location: @insuarance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @insuarance.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @insuarance.destroy

    respond_to do |format|
      format.html { redirect_to insuarances_url, notice: "Insuarance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def calculate_premium
    municipla_evaluation_of_property = params[:municipla_evaluation_of_property]
    prime_avant_tax = (((municipla_evaluation_of_property-50000)/1000)*1.17)+320
    emission_fees = 20
    tax = (prime_avant_tax*9)/100
    @insuarance_premium = (prime_avant_tax) + (emission_fees) + (tax)
    render json: {insuarance_premium: @insuarance_premium}
  end

  private
    def set_insuarance
      @insuarance = Insuarance.find(params[:id])
    end

    def insuarance_params
      params.require(:insuarance).permit(:first_name, :address, :last_name, :postal_code, :email, :city, :phone, :province, :municipla_evaluation_of_property, :insuarance_premium, :language, :second_home_owner, :third_home_owner, :type_of_property, :present_owner, :purchase_date, :lot_number, :bound_by_water, :ensure_municipal_water_sewer, :ensure_property, :client_knowledge, :note, :referral_agent_name, :referral_agent_email)
    end
end
