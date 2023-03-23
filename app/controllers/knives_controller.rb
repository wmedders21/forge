class KnivesController < ApplicationController
  def index
    @knives = Knife.all
  end

  def show
    @knife = Knife.find(params[:id])
  end
end