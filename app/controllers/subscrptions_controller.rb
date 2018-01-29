class SubscrptionsController < ApplicationController
  before_action :set_subscrption, only: [:show, :edit, :update, :destroy]

  # GET /subscrptions
  # GET /subscrptions.json
  def index
    @subscrptions = Subscrption.all
  end

  # GET /subscrptions/1
  # GET /subscrptions/1.json
  def show
  end

  # GET /subscrptions/new
  def new
    @subscrption = Subscrption.new
     # plan = Plan.find(params[:plan_id])
  # @subscription = plan.subscriptions.build
  if params[:PayerID]
    @subscription.paypal_customer_token = params[:PayerID]
    @subscription.paypal_payment_token = params[:token]
    @subscription.email = @subscription.paypal.checkout_details.email
  end
  end
  def paypal_checkout
  plan = Plan.find(params[:plan_id])
  subscription = plan.subscriptions.build
  redirect_to subscription.paypal.checkout_url(
    return_url: new_subscription_url(:plan_id => plan.id),
    cancel_url: root_url
  )
end

  # GET /subscrptions/1/edit
  def edit
  end

  # POST /subscrptions
  # POST /subscrptions.json
  def create
    @subscrption = Subscrption.new(subscrption_params)

    respond_to do |format|
      if @subscrption.save
        format.html { redirect_to @subscrption, notice: 'Subscrption was successfully created.' }
        format.json { render :show, status: :created, location: @subscrption }
      else
        format.html { render :new }
        format.json { render json: @subscrption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subscrptions/1
  # PATCH/PUT /subscrptions/1.json
  def update
    respond_to do |format|
      if @subscrption.update(subscrption_params)
        format.html { redirect_to @subscrption, notice: 'Subscrption was successfully updated.' }
        format.json { render :show, status: :ok, location: @subscrption }
      else
        format.html { render :edit }
        format.json { render json: @subscrption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subscrptions/1
  # DELETE /subscrptions/1.json
  def destroy
    @subscrption.destroy
    respond_to do |format|
      format.html { redirect_to subscrptions_url, notice: 'Subscrption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscrption
      @subscrption = Subscrption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subscrption_params
      params.require(:subscrption).permit(:email, :credit_card_number, :cvv, :expiration)
    end
end
