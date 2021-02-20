class Admin::ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: %i[ show edit update destroy ]

  def index
    @listings = Listing.all
  end

  def show
  end

  def new
    @listing = Listing.new
  end

  def edit
  end

  def create
    @listing = Listing.new(listing_params)

    respond_to do |format|
      if @listing.save
        format.html { redirect_to admin_listing_path(@listing), notice: "Listing was successfully created." }
        # format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new, status: :unprocessable_entity }
        # format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @listing.update(listing_params)
        # format.html { redirect_to admin_listing_path(@listing), notice: "Listing was successfully updated." }
        format.html { redirect_to admin_listing_path(@listing), notice: "Listing was successfully updated." }
        # format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        # format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to admin_listings_url, notice: "Listing was successfully destroyed." }
      # format.json { head :no_content }
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:id])
  end

  def listing_params
    params.require(:listing).permit(:address, :main_photo)
  end
end
