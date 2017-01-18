module ResqueJob
  extend ActiveSupport::Concern

  module ClassMethods
    def queue
      @queue || :interactor_operations
    end
  end
end

class SleepingJob
  include ResqueJob

  def self.perform
    puts
    puts 'I like to sleep'
    sleep 2
    puts 'hello world'
  end
end