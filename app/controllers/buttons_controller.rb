class ButtonsController < ApplicationController
  before_action :first_button!, only: %i[index increase]

  def index
  end

  def increase
    sleep 2
    @button.clicks = 1 + @button.clicks.to_i
    @button.save
  end

  private
  def first_button!
    @button = Button.find(1)
  end

end
