class KnivesController < ApplicationController
  def index
    @knives = Knife.all.with_attached_images
  end

  def show
    @knife = Knife.find(params[:id])
  end

  def new
  end

  def edit
    @knife = Knife.find(params[:id])
  end
  
  def create
    @knife = Knife.new(knife_params)
    if @knife.save
      @knife.images.attach(params[:images])
      redirect_to "/knives/#{@knife.id}"
    else
      flash[:alert] = "Please fill out all fields. Put N/A if necessary."
      redirect_to "/knives/new"
    end   
  end
  
  def update
    knife = Knife.find(params[:id])
    if knife.update(knife_params)
      knife.images.attach(params[:images])
      redirect_to "/knives/#{knife.id}"
    else
      flash[:alert] = "Please fill out all fields. Put N/A if necessary."
      redirect_to "/knives/#{knife.id}/edit"
    end
  end
  
  def destroy
    Knife.find(params[:id]).destroy
    redirect_to "/knives"
  end

  private

  def knife_params
    params.permit(
      :customer_name,
      :blade,
      :handle,
      :pins,
      :guard,
      :finish,
      :process,
      :sheath,
      :images
    )
  end
end