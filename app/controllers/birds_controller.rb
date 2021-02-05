class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: {id: bird.id, name: bird.name, species: bird.species }
    # render json: birds, only: [:id, :name, :species]
    # render json: birds, exept: [:created_at, :updated_at]
    else 
      render json: {message: 'Bird not found'}
  end
end 
end
