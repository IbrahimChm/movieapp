class DocumentalesController < ApplicationController
  def index
    @documentales = Documental.all
  end

  def create
    @documental = Documental.new(documental_params)
    if @documental.save
      redirect_to documentales_path, notice: 'Documental creado exitosamente.'
    else
      render :new
    end
  end

  def new
    @documental = Documental.new
  end

  private

  def documental_params
    params.require(:documental).permit(:name, :synopsis, :director)
  end
end
