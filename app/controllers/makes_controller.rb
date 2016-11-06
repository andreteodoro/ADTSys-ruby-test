class MakesController < ApplicationController
  def index
    @makes = Make.fetch_all
  end
end
