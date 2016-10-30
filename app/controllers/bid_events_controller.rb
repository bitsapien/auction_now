class BidEventsController < ApplicationController
  before_action :set_bid_event, only: [:show, :edit, :update, :destroy]

  # GET /bid_events
  # GET /bid_events.json
  def index
    @bid_events = BidEvent.all
  end

  # GET /bid_events/1
  # GET /bid_events/1.json
  def show
  end

  # GET /bid_events/new
  def new
    @bid_event = BidEvent.new
  end

  # GET /bid_events/1/edit
  def edit
  end

  # POST /bid_events
  # POST /bid_events.json
  def create
    @bid_event = BidEvent.new(bid_event_params)

    respond_to do |format|
      if @bid_event.save
        format.html { redirect_to :back }
        format.json { render :show, status: :created, location: @bid_event }
      else
        format.html { render :new }
        format.json { render json: @bid_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bid_events/1
  # PATCH/PUT /bid_events/1.json
  def update
    respond_to do |format|
      if @bid_event.update(bid_event_params)
        format.html { redirect_to @bid_event, notice: 'Bid event was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid_event }
      else
        format.html { render :edit }
        format.json { render json: @bid_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_events/1
  # DELETE /bid_events/1.json
  def destroy
    @bid_event.destroy
    respond_to do |format|
      format.html { redirect_to bid_events_url, notice: 'Bid event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_event
      @bid_event = BidEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_event_params
      params.require(:bid_event).permit(:auctionable_id, :participant_id, :final, :amount)
    end
end
