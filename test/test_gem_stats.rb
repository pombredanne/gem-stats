require 'contest'
require 'lib/rubygems/commands/stats_command'
begin; require 'turn'; rescue LoadError; end

class GemStatsTest < Test::Unit::TestCase
  context 'running gem stats' do
    test 'should return some statistics' do
      stats = Gem::Commands::StatsCommand.new.get_stats('sinatra')

      assert_equal 'sinatra', stats['name']
    end
  end
end
