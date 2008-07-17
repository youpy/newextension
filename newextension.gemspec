Gem::Specification.new do |s|
  s.name = %q{newextension}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["youpy"]
  s.date = %q{2008-07-18}
  s.default_executable = %q{newextension}
  s.description = %q{Create a Firefox extension skeleton}
  s.email = %q{youpy@buycheapviagraonlinenow.com}
  s.executables = ["newextension"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "License.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/newextension", "config/hoe.rb", "config/requirements.rb", "lib/newextension.rb", "lib/newextension/version.rb", "script/destroy", "script/generate", "setup.rb", "tasks/deployment.rake", "tasks/environment.rake", "tasks/website.rake", "templates/chrome/content/__extension__.js", "templates/chrome/content/overlay.xul", "templates/chrome/skin", "templates/chrome.manifest", "templates/install.rdf", "templates/Rakefile", "test/test_helper.rb", "test/test_newextension.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://newextension.rubyforge.org}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{newextension}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Create a Firefox extension skeleton}
  s.test_files = ["test/test_helper.rb", "test/test_newextension.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<uuidtools>, [">= 0"])
    else
      s.add_dependency(%q<uuidtools>, [">= 0"])
    end
  else
    s.add_dependency(%q<uuidtools>, [">= 0"])
  end
end
