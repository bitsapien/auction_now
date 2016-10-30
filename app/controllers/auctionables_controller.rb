require 'csv'
class AuctionablesController < ApplicationController
  before_action :set_auctionable, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /auctionables
  # GET /auctionables.json
  def index

    @auctionables = Auctionable.all
  end


  # GET /auctionables/1
  # GET /auctionables/1.json
  def show
    @bid_event = BidEvent.new
    @bid_amount = @auctionable.bid_events.blank? ?  @auctionable.base_price : @auctionable.bid_events.last.amount
    @participants = Participant.all
    render layout: 'application'
  end

  # GET /auctionables/new
  def new

    @auctionable = Auctionable.new
  end

  def bulk_new
  end

  def bulk_upload
    myfile = params[:csv_file]

    CSV.foreach(myfile.path,headers: true, encoding:'iso-8859-1:utf-8') do |row|
      name = row[0]
      description = row[1]
      image_url = row[2]
      base_price = row[3]
      Auctionable.create(name: name, description: description, image_url: image_url, base_price: base_price)
    end
     redirect_to auctionables_path
  end

  # GET /auctionables/1/edit
  def edit
  end

  # POST /auctionables
  # POST /auctionables.json
  def create
    @auctionable = Auctionable.new(auctionable_params)

    respond_to do |format|
      if @auctionable.save
        format.html { redirect_to @auctionable, notice: 'Auctionable was successfully created.' }
        format.json { render :show, status: :created, location: @auctionable }
      else
        format.html { render :new }
        format.json { render json: @auctionable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /auctionables/1
  # PATCH/PUT /auctionables/1.json
  def update
    respond_to do |format|
      if @auctionable.update(auctionable_params)
        format.html { redirect_to @auctionable, notice: 'Auctionable was successfully updated.' }
        format.json { render :show, status: :ok, location: @auctionable }
      else
        format.html { render :edit }
        format.json { render json: @auctionable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auctionables/1
  # DELETE /auctionables/1.json
  def destroy
    @auctionable.destroy
    respond_to do |format|
      format.html { redirect_to auctionables_url, notice: 'Auctionable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auctionable
      @auctionable = Auctionable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def auctionable_params
      params.require(:auctionable).permit(:name, :description, :image_url, :base_price)
    end
end
