Gem::Specification.new do |s|
  s.name     = 'gem-stats'
  s.version  = '1.0.5'
  s.date     = '2010-3-04'
  s.summary  = 'View statistics for gems.'

  s.authors  = ['Danny Tatom']
  s.email    = 'dannytatom@gmail.com'
  s.homepage = 'http://github.com/dannytatom/gem-stats'
  s.description = 'View statistics for given gems.'
 
  s.add_development_dependency 'turn'
  s.add_development_dependency 'contest'
 
  s.files = ['README.md', 'LICENSE',
             'lib/rubygems/commands/stats_command.rb',
             'lib/rubygems_plugin.rb']

  s.has_rdoc = false
end
