class Device
  def deliver
    _deliver
  end
  handle_asynchronously :deliver

  #def deliver_without_delay
  #  _deliver
  #end

  private

  def _deliver
    # long running method
    puts "devise#deliver #{self.object_id} starts"
    sleep 10
    puts "devise#deliver #{self.object_id} ends"
  end
end
