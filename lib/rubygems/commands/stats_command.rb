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
    HTTParty.get "http://gemcutter.org/api/v1/gems/#{gem}.json"
  end

  def execute
    begin
      gem = get_one_gem_name
    rescue Gem::CommandLineError
      puts 'Please specify a gem name (e.g. gem stats sinatra).'
      exit
    end

    stats = get_stats gem 
    
    if stats.to_s == 'This rubygem could not be found.'
      puts "Sorry kid, doesn't look like that gem exists!"
    else
      title = "#{stats['name']} by #{stats['authors']}"
    
      puts title
      puts '-' * title.size
      puts "http://gemcutter.org/gems/#{stats['name']}\n\n"
      puts "Downloads:       #{stats['downloads']}"
      puts "Current version: #{stats['version']}"
    end
  end
end
