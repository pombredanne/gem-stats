require 'baretest'
require 'lib/rubygems/commands/stats_command'

suite('Running gem-stats') do
  exercise('should return some statistics') do
    stats = Gem::Commands::StatsCommand.new.get_stats('sinatra')
    @result = 'sinatra' == stats['name']
  end

  verify('and it does!') do
    @result
  end
end
