class ItemJob
  include ResqueJob

  def self.perform(id)
    sleep 2

    puts
    puts "About to update item #{id}"
    Item.update_by_job(id)
    puts
  end
end