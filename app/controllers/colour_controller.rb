# frozen_string_literal: true
class ColourController < ApplicationController

  before_action :set_colour

  def index
    colour = Colour.first.name
    respond_to do |format|
      format.json { render json: { colour: colour } }
    end
  end

  def edit
  end

  def update

  end

  private

  def set_colour
    @colour = Colour.first
  end
end
