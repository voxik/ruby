require File.expand_path('lib/rake/version', File.dirname(__FILE__))

PKG_FILES = [
  'bin/rake',
  Dir['lib/**/*.rb'],
  Dir['test/**/*.rb'],
  Dir['doc/**/*']
].flatten
PKG_FILES.reject! {|f| f =~ %r(doc/example/.*\.o) }
PKG_FILES.reject! {|f| f == 'TAGS' }
PKG_FILES.reject! {|f| f =~ %r(doc/example/main$) }

BASE_RDOC_OPTIONS = [
  '--line-numbers', '--show-hash',
  '--main', 'README.rdoc',
  '--title', 'Rake -- Ruby Make'
]

Gem::Specification.new do |s|
  s.name = 'rake'
  s.version = Rake::VERSION
  s.summary = "Ruby based make-like utility."
  s.description = <<-EOF.delete "\n"
Rake is a Make-like program implemented in Ruby. Tasks and dependencies are
specified in standard Ruby syntax.
EOF

  s.required_ruby_version = '>= 1.8.6'
  s.required_rubygems_version = '>= 1.3.2'
  s.add_development_dependency 'minitest', '~> 2.1'

  s.files = PKG_FILES

  s.executables = ["rake"]

  s.rdoc_options = BASE_RDOC_OPTIONS

  s.author = "Jim Weirich"
  s.email = "jim@weirichhouse.org"
  s.homepage = "http://rake.rubyforge.org"
  s.rubyforge_project = "rake"
end
