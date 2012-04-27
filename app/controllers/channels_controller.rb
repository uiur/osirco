class ChannelsController < ApplicationController
  # GET /channels
  # GET /channels.json
  def index
    @channels = Channel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @channels }
    end
  end

  # GET /channels/1
  # GET /channels/1.json
  def show
    @channel = Channel.find(params[:id])
    @messages = @channel.messages

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @channel }
    end
  end
end
