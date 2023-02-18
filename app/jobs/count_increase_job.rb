class CountIncreaseJob < ApplicationJob
  queue_as :default

  def perform(button)
    ActionCable.server.broadcast 'ClicksChannel', { message: render_count(button) }
  end
  def render_count(button)
    ButtonsController.render(layout: 'buttons/index', locals: { button: button })
  end
end
