class HouseHuntersController < ApplicationController
  def new

  end
  def create
    @house_hunter = HouseHunter.new(params[:house_hunter])
    @house_hunter.save
    redirect_to @house_hunter
  end
end
