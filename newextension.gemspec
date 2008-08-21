Gem::Specification.new do |s|
  s.name = %q{newextension}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["youpy"]
  s.date = %q{2008-08-21}
  s.description = %q{Create a Firefox extension skeleton}
  s.email = ["youpy@buycheapviagraonlinenow.com"]
  s.executables = ["newextension", "newextension.orig"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "app_generators/newextension/USAGE", "app_generators/newextension/newextension_generator.rb", "app_generators/newextension/templates/Rakefile", "app_generators/newextension/templates/chrome.manifest", "app_generators/newextension/templates/chrome/content/__extension__.js", "app_generators/newextension/templates/chrome/content/overlay.xul", "app_generators/newextension/templates/install.rdf", "bin/newextension", "bin/newextension.orig", "config/hoe.rb", "config/requirements.rb", "lib/newextension.rb", "lib/newextension/version.rb", "newextension.gemspec", "script/console", "script/destroy", "script/generate", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_newextension.rb", "test/test_newextension_generator.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://newextension.rubyforge.org}
  s.post_install_message = %q{}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{newextension}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Create a Firefox extension skeleton}
  s.test_files = ["test/test_generator_helper.rb", "test/test_helper.rb", "test/test_newextension.rb", "test/test_newextension_generator.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<uuidtools>, [">= 1.0.3"])
      s.add_runtime_dependency(%q<rubigen>, [">= 1.3.2"])
      s.add_development_dependency(%q<hoe>, [">= 1.7.0"])
    else
      s.add_dependency(%q<uuidtools>, [">= 1.0.3"])
      s.add_dependency(%q<rubigen>, [">= 1.3.2"])
      s.add_dependency(%q<hoe>, [">= 1.7.0"])
    end
  else
    s.add_dependency(%q<uuidtools>, [">= 1.0.3"])
    s.add_dependency(%q<rubigen>, [">= 1.3.2"])
    s.add_dependency(%q<hoe>, [">= 1.7.0"])
  end
end
