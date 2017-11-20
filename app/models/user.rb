class User < ApplicationRecord
  def activate!(device)
    device.deliver
  end
end
