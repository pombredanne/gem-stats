require 'httparty'

class Gem::Commands::StatsCommand < Gem::Command
  def initialize
    super 'stats', 'View gemcutter statistics for any given gem'
  end

  def arguments
    '[gem name]'
  end

  def usage
    "#{program_name} [gem-name]"
  end

  def get_stats gem
    HTTParty.get "http://gemcutter.org/gems/#{gem}.json"
  end

  def execute
    gem   = get_one_optional_argument
    stats = get_stats gem 
    gem_name = "#{stats['name']} by #{stats['authors']}"
    
    puts gem_name
    puts '-' * gem_name.size
    puts "Downloads:       #{stats['downloads']}"
    puts "Current version: #{stats['version']}"
  end
end
