class ListingsController < ApplicationController
  # before_action :authenticate_user!
  # before_action :set_listing, only: %i[ show edit update destroy ]
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

  # def listing_params
  #   params.require(:listing).permit(:address)
  # end
end
