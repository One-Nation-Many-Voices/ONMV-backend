class Api::V1::EventsController < ApplicationController

  before_filter :set_headers
  protected
  def set_headers
    response.headers['Access-Control-Allow-Origin'] = '*'
  end

  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end



end
