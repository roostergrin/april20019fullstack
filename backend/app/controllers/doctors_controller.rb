class DoctorsController < ApplicationController
  def index
    render json: Doctor.all
  end
end
