class PagesController < ApplicationController
  def landing
  end

  def listings
    @listings = Listing.all
  end

  def about
  end

  def contact
  end
end
