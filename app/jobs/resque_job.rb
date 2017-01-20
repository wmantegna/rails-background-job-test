module ResqueJob
  extend ActiveSupport::Concern

  module ClassMethods
    def queue
      @queue || :interactor_operations
    end
  end
end