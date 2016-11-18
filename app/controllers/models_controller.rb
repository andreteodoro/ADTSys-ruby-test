class ModelsController < ApplicationController
  def show
    @brand = Brand.find(params[:brand_select])
    @models = Model.fetch_all(@brand)
  end
end
