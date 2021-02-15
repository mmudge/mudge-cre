class PagesController < ApplicationController
  def landing
  end

  def listings
    @listings = Listing.all
  end
end
