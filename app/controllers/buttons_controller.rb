class ButtonsController < ApplicationController
  def index
    if Button.find(1)
      @button = Button.find(1)
    else
      @button = Button.create(id:1, click: 0)
    end
    if  @button.clicks.nil?
      @button.clicks = 0
      @button.save
    end
  end
  def click
    if Button.find(1)
      @button = Button.find(1)
    else
      @button = Button.create(id:1, click: 0)
    end
    if  @button.clicks.nil?
      @button.clicks = 0
      @button.save
    end
    @countClicks = @button.clicks.to_i
    Button.update 1, clicks: @countClicks+1
  end

=begin
  def create
    if Button.find(1)
      @button = Button.find(1)
    else
      @button = Button.create(id:1, click: 0)
    end
    if  @button.clicks.nil?
      @button.clicks = 0
      @button.save
    end
    @countClicks = @button.clicks.to_i
    Button.update 1, clicks: @countClicks+1
  end
=end



end
