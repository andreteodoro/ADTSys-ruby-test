class ModelsController < ApplicationController
  def show
    @make = Make.find(params[:make_select])
    @models = Model.fetch_all(@make)
  end
end
