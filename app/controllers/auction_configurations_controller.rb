class AuctionConfigurationsController < ApplicationController
  before_action :set_auction_configuration, only: [:show, :edit, :update, :destroy]
  
  layout 'admin'

  # GET /auction_configurations
  # GET /auction_configurations.json
  def index
    @auction_configuration = AuctionConfiguration.first
  end

  # GET /auction_configurations/1
  # GET /auction_configurations/1.json
  def show
  end

  # GET /auction_configurations/new
  def new
    @auction_configuration = AuctionConfiguration.new
  end

  # GET /auction_configurations/1/edit
  def edit
  end

  # POST /auction_configurations
  # POST /auction_configurations.json
  def create
    @auction_configuration = AuctionConfiguration.new(auction_configuration_params)

    respond_to do |format|
      if @auction_configuration.save
        format.html { redirect_to @auction_configuration, notice: 'Auction configuration was successfully created.' }
        format.json { render :show, status: :created, location: @auction_configuration }
      else
        format.html { render :new }
        format.json { render json: @auction_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auction_configurations/1
  # PATCH/PUT /auction_configurations/1.json
  def update
    respond_to do |format|
      if @auction_configuration.update(auction_configuration_params)
        format.html { redirect_to action: :index, notice: 'Configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @auction_configuration }
      else
        format.html { render :edit }
        format.json { render json: @auction_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auction_configurations/1
  # DELETE /auction_configurations/1.json
  def destroy
    @auction_configuration.destroy
    respond_to do |format|
      format.html { redirect_to auction_configurations_url, notice: 'Auction configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auction_configuration
      @auction_configuration = AuctionConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auction_configuration_params
      params.require(:auction_configuration).permit(:application_name, :bid_increment_value)
    end
end
