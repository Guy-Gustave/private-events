class EventsController < ApplicationController

    def index
      @event= Event.all
    end
  
    def show
      @event = Event.find(params[:id])
    end

    def new
      @event = current_user.event.build
    end
    
  
    def  create
      @event = current_user.event.build(event_params)
      if @event.save
        flash[:success] = "Event successfully created"
        redirect_to @event
      else
        flash[:error] = "Something went wrong"
        render 'new'
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
  
end
