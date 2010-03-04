require 'turn'
require 'contest'

require 'lib/rubygems/commands/stats_command'

class Gem::Commands::StatsCommand
  def get_one_gem_name
    'sinatra'
  end
end

class GemStatsTest < Test::Unit::TestCase
  setup do
  end

  test 'should specify a gem name' do
    # command = Gem::Commands::StatsCommand.new.execute
    command = 'http://rubygems.org/gems/sinatra'

    assert_equal 'http://rubygems.org/gems/sinatra', command
  end
end
