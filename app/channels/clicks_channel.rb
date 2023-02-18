class ClicksChannel < ApplicationCable::Channel
  def subscribed
    stream_from "ClicksChannel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
