require 'baretest'
require 'lib/rubygems/commands/stats_command'

BareTest.suite do
  suite 'Running gem-stats' do
    assert 'should return some statistics' do
      stats = Gem::Commands::StatsCommand.new.get_stats('sinatra')
      
      stats['name'] == 'sinatra'
    end
  end
end
