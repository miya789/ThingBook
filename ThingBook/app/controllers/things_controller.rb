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
      name: params[:name],
      category: params[:category]
    )
    if @thing.save
      redirect_to("/things/index")
    else
      render("things/new")
    end
  end

  def edit
    @thing = Thing.find_by(id: params[:id])
  end

  def update
    @thing = Thing.find_by(id: params[:id])
    @thing.name = params[:name]
    @thing.category = params[:category]
    
    if @thing.save
      redirect_to("/things/#{@thing.id}")
    else
      render("things/edit")
    end
  end
end
