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
    @channels = Channel.all

    search = params[:search]
    @messages = @channel.messages.where{ ((content.like "%#{search}%") | (username.like "%#{search}%")) }

    if params[:date]
      last = Time.zone.parse(params[:date]).end_of_day
      @messages = @messages.where{ sended_at <= last  }
      @date = last
    end

    @messages = @messages.page(params[:page])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @messages }
    end
  end
end
