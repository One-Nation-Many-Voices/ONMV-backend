class Api::V1::EventsController < ApplicationController

  before_filter :set_headers

  def index
    render json: Event.all
  end

  def show
    render json: Event.find(params[:id])
  end

  protected
  def set_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET, OPTIONS'
  end


end
