class ListingHistoricalDataJob < ApplicationJob
  queue_as :default

  def perform(listing_id)
    # Do something later
    # take listing, find its address, fetch data
  end
end
