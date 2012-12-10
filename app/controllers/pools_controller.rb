class PoolsController < ApplicationController
  before_filter :event_required

  def new
    @pool = Pool.new
    3.times { |t| @pool.questions.build }
  end

  def create
    @pool = Pool.new params[:pool]
    if @pool.save
      redirect_to event_path(@event)
    else
      render 'new'
    end
  end

  def edit
    @pool = Pool.find(params[:id])
  end

  def update
    @pool = Pool.find(params[:id])
    redirect_to event_path(@event) and return if @pool.update_attributes(params[:pool])
  end

  def destroy
    @pool = Pool.find(params[:id])
    @pool.destroy
  end

  private

  def event_required
    @event = Event.find(params[:event_id])
  end

end
