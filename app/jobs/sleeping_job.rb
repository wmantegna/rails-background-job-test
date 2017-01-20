class SleepingJob
  include ResqueJob

  def self.perform
    puts
    puts 'I like to sleep'
    sleep 2
    puts 'hello world'
  end
end