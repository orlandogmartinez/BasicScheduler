class EventsController < ApplicationController

  def index

  end

  def new

  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Elemento guardado correctamente"
      redirect_to events_path
    else
      flash[:alert] = "Error al guardar el elemento, verifique los datos"
      render :new
    end
  end

  def show

  end

  def edit

  end

  def update
    if @event.update(event_params)
      flash[:notice] = "Elemento guardado correctamente"
      redirect_to events_path
    else
      flash[:alert] = "Error al guardar el elemento, verifique los datos"
      render :edit
    end
  end

  def destroy
    @event.destroy!
    flash[:notice] = "Elemento guardado correctamente"
    redirect_to events_path
  end

  private

  def load_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :starts_at, :ends_at, :additional_attributes)
  end
end
