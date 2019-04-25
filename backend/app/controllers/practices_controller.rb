class PracticesController < ApplicationController
  def index
    render json: Practice.all
  end
end
