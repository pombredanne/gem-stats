Gem::Specification.new do |s|
  s.name     = 'gem-stats'
  s.version  = '1.0.1'
  s.date     = '2009-11-05'
  s.summary  = 'View gemcutter statistics for any given gem.'

  s.email    = 'dannytatom@gmail.com'
  s.homepage = 'http://github.com/dannytatom/gem-stats'
  s.description = 'View gemcutter statistics for any given gem.'
  s.authors = ['Danny Tatom']
  s.files = ['README.md', 'LICENSE',
             'lib/rubygems/commands/stats_command.rb', 'lib/rubygems_plugin.rb']

  s.has_rdoc = false
  s.add_dependency 'httparty', '>= 0.4.5'
end
