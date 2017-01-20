class Item < ActiveRecord::Base
  def last_updated_by
    self.updated_at.nil? ? 'Human' : 'Job'
  end

  def self.update_by_job(id)
    @item = Item.find(id)
    if @item.is_a? Item
      @item.update
    end
  end
end
