require 'csv'
class PlayController < ApplicationController
  # GET /auctionables
  # GET /auctionables.json
  def index

    @auctionables = Auctionable.all
  end

end
