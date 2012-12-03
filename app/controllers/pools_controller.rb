class PoolsController < ApplicationController
  before_filter :event_required

  def new
    @pool = Pool.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def event_required
    @event = Event.find(params[:event_id])
  end

end
