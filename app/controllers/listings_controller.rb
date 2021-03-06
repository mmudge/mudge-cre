class ListingsController < ApplicationController
  before_action :set_listing, only: [:show]

  def index
    @listings = Listing.all
  end

  def show
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end
end
