# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rake"
  s.version = "0.9.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jim Weirich"]
  s.description = "Rake is a Make-like program implemented in Ruby. Tasks and dependencies arespecified in standard Ruby syntax."
  s.email = "jim@weirichhouse.org"
  s.executables = ["rake"]
  s.files = ["bin/rake", "lib/rake/alt_system.rb", "lib/rake/application.rb", "lib/rake/classic_namespace.rb", "lib/rake/clean.rb", "lib/rake/cloneable.rb", "lib/rake/contrib/compositepublisher.rb", "lib/rake/contrib/ftptools.rb", "lib/rake/contrib/publisher.rb", "lib/rake/contrib/rubyforgepublisher.rb", "lib/rake/contrib/sshpublisher.rb", "lib/rake/contrib/sys.rb", "lib/rake/default_loader.rb", "lib/rake/dsl_definition.rb", "lib/rake/early_time.rb", "lib/rake/ext/core.rb", "lib/rake/ext/module.rb", "lib/rake/ext/string.rb", "lib/rake/ext/time.rb", "lib/rake/file_creation_task.rb", "lib/rake/file_list.rb", "lib/rake/file_task.rb", "lib/rake/file_utils.rb", "lib/rake/file_utils_ext.rb", "lib/rake/gempackagetask.rb", "lib/rake/invocation_chain.rb", "lib/rake/invocation_exception_mixin.rb", "lib/rake/loaders/makefile.rb", "lib/rake/multi_task.rb", "lib/rake/name_space.rb", "lib/rake/packagetask.rb", "lib/rake/pathmap.rb", "lib/rake/pseudo_status.rb", "lib/rake/rake_module.rb", "lib/rake/rake_test_loader.rb", "lib/rake/rdoctask.rb", "lib/rake/ruby182_test_unit_fix.rb", "lib/rake/rule_recursion_overflow_error.rb", "lib/rake/runtest.rb", "lib/rake/task.rb", "lib/rake/task_argument_error.rb", "lib/rake/task_arguments.rb", "lib/rake/task_manager.rb", "lib/rake/tasklib.rb", "lib/rake/testtask.rb", "lib/rake/version.rb", "lib/rake/win32.rb", "lib/rake.rb"]
  s.homepage = "http://rake.rubyforge.org"
  s.require_paths = ["lib"]
  s.rubyforge_project = "rake"
  s.summary = "Ruby based make-like utility."
end

