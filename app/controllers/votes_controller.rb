class VotesController < ApplicationController

  before_filter :require_event

  def create
    params[:vote].merge!({ user_id: current_user.id, pool_id: params[:pool_id] })
    @vote = Vote.new params[:vote]
    if @vote.save
      flash[:success] = I18n.t("messages.vote_complete")
    else
      flash[:error] = I18n.t("messages.vote_failed")
    end

    redirect_to event_path(@event)
  end

  protected

  def require_event
    @event = Event.find(params[:event_id])
  end
end
