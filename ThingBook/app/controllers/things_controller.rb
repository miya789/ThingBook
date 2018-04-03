class ThingsController < ApplicationController
  def index
    @things = Thing.all()
  end

  def show
    @thing = Thing.find_by(id: params[:id])
  end
end
