class PeliculasController < ApplicationController
  def index
    @peliculas = Pelicula.all
  end

  def create
    @pelicula = Pelicula.new(pelicula_params)
    if @pelicula.save
      redirect_to peliculas_path, notice: 'Película creada exitosamente.'
    else
      render :new
    end
  end

  def new
    @pelicula = Pelicula.new
  end

  private

  def pelicula_params
    params.require(:pelicula).permit(:name, :synopsis, :director)
  end
end
