class SearchsController < ApplicationController
  def search_filter
    @genres = GENRES
  end
end
