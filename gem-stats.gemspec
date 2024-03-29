Gem::Specification.new do |s|
  s.name    = 'gem-stats'
  s.version = '1.0.7'
  s.date    = '2010-6-23'
  s.summary = 'View authors, dependencies, etc for rubygems.'

  s.authors     = ['Danny Tatom']
  s.email       = 'dannytatom@gmail.com'
  s.homepage    = 'http://github.com/dannytatom/gem-stats'
  s.description = 'View authors, dependencies, etc for rubygems.'
 
  s.files = ['README.md', 'LICENSE',
             'lib/rubygems/commands/stats_command.rb',
             'lib/rubygems_plugin.rb']

  s.has_rdoc = false

  s.required_rubygems_version = '>= 1.3.6'
  s.add_development_dependency  'baretest', '>= 0.5.0.pre'
end
