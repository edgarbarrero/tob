# frozen_string_literal: true
class ColourController < ApplicationController

  before_action :set_colour

  def index
    respond_to do |format|
      format.json { render json: { colour: @colour.name } }
    end
  end

  def update
    @colour.update_attribute(:name, params[:name])
    redirect_to edit_colour_path(@colour)
  end

  private

  def set_colour
    @colour = Colour.first
  end
end
