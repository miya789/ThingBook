class ThingsController < ApplicationController
  def index
    @things = Thing.all()
  end

  def show
    @thing = Thing.find_by(id: params[:id])
  end

  def new
    @thing = Thing.new
  end

  def create
    @thing = Thing.new(
      name: params[:name]
    )
    if @thing.save
      redirect_to("/things/index")
    else
      render("users/new")
    end
  end
end
