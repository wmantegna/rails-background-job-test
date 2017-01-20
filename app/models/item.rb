class Item < ActiveRecord::Base
  def last_updated_by
    self.updated_at == self.created_at ? 'Human' : 'Job'
  end

  def self.update_by_job(id)
    
    puts 'Item.update_by_job(id) received'
    begin
      @item = Item.find(id)
      if @item.is_a? Item
        @item.updated_at = Time.zone.now
        @item.save
      else
        puts 'item not found'
      end
    rescue Exception => error
      puts error
    ensure
      puts 'Item.update_by_job(id) completed'
    end
  end
end
