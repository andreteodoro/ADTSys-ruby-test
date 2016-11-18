class BrandsController < ApplicationController
  def index
    @brands = Brand.fetch_all
  end
end
