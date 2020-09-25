class EventsController < ApplicationController

  def index
    @events= Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end
  
  def  create
    
    @event = current_user.events.build(event_params)
    @event.creator_id = session[:user_id]
    if @event.save
      flash[:success] = "Event successfully created"
      redirect_to event_path(@event)
    else

      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def register
    @attendance = Attendance.create(event_id: params[:id], user_id: session[:user_id])
    if @attendance.save
      flash[:notice] = 'welcome to the event, Registered sucessfully'
      redirect_to event_path
    end
  end
 

  # def update
  #   @ = .find(params[:id])
  # end

  # def edit
  #   @ = .find(params[:id])
  # end

  # def destroy
  #    = .find(params[:id])
  # end
  private

  def event_params
    params.require(:event).permit(:event_date, :description)
  end
end
