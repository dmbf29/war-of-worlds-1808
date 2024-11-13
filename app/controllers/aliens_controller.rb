class AliensController < ApplicationController

  # '/planets/1/aliens/new'
  def new
    @alien = Alien.new
    @planet = Planet.find(params[:planet_id])
  end

  # post '/planets/1/aliens' (from the form)
  def create
    @planet = Planet.find(params[:planet_id]) # loading nested resource first
    @alien = Alien.new(alien_params)
    @alien.planet = @planet # giving the reference to the alien
    if @alien.save
      redirect_to planet_path(@planet)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    @alien = Alien.find(params[:id])
    @alien.destroy
    redirect_to planet_path(@alien.planet), status: :see_other
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :image_url)
  end
end
