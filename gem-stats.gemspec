Gem::Specification.new do |s|
  s.name     = 'gem-stats'
  s.version  = '1.0.4'
  s.date     = '2010-2-12'
  s.summary  = 'View gemcutter statistics for any given gem.'

  s.authors  = ['Danny Tatom']
  s.email    = 'dannytatom@gmail.com'
  s.homepage = 'http://github.com/dannytatom/gem-stats'
  s.description = 'View gemcutter statistics for any given gem.'
  
  s.files = ['README.md', 'LICENSE',
             'lib/rubygems/commands/stats_command.rb',
             'lib/rubygems_plugin.rb']

  s.has_rdoc = false
end
