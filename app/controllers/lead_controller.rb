class LeadController < ApplicationController

  def index
    @lead = Lead.all
    render json: @lead
  end

  def show
    @lead = Lead.find(params[:id])
    render json: @lead
  end
end
