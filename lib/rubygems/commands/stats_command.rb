require 'open-uri'
require 'json'

class Gem::Commands::StatsCommand < Gem::Command
  def initialize
    super 'stats', 'View statistics for gems'
  end

  def arguments
    '[gem name]'
  end

  def usage
    "#{program_name} [gem-name]"
  end

  def get_stats gem
    begin
      open "http://rubygems.org/api/v1/gems/#{gem}.json" do |results|
        JSON.parse results
      end
    rescue OpenURI::HTTPError
      puts "Whoops, seems as if that gem doesn't exist!"
      exit
    end
  end

  def execute
    begin
      gem = get_one_gem_name
    rescue Gem::CommandLineError
      puts 'Please specify a gem name (e.g. gem stats sinatra).'
      exit
    end

    stats = get_stats gem

    puts stats['name'] + ' by ' + stats['authors']
    puts stats['project_uri']

    puts ''

    puts 'Total Downloads   ' + stats['downloads'].to_s
    puts 'Version Downloads ' + stats['version_downloads'].to_s
    puts 'Current Version   ' + stats['version']

    unless stats['dependencies']['runtime'].empty?
      puts ''

      puts 'Runtime Dependencies'
      stats['dependencies']['runtime'].each do |dependency|
        puts dependency['name'] + ' ' + dependency['requirements']
      end
    end

    unless stats['dependencies']['development'].empty?
      puts ''
      
      puts 'Development Dependencies'
      stats['dependencies']['development'].each do |dependency|
        puts dependency['name'] + ' ' + dependency['requirements']
      end
    end
  end
end
