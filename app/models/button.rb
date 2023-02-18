class Button < ApplicationRecord
  after_update { CountIncreaseJob.perform_later(self) }
end
