# frozen_string_literal: true
class ColourController < ApplicationController

  def show
    respond_to do |format|
      colour = if Colour.current == 'flash'
                 rand(10) > 5 ? 'black' : 'white'
               else
                 Colour.current
               end
      format.json { render json: { colour: colour } }
    end
  end

  def update
    Colour.current = params[:current]
    redirect_to '/colour/edit'
  end
end
