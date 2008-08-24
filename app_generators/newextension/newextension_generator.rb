begin
  require 'rubygems'
rescue LoadError
  # no rubygems to load, so we fail silently
end
require 'uuidtools'

class NewextensionGenerator < RubiGen::Base

  DEFAULT_SHEBANG = File.join(Config::CONFIG['bindir'],
                              Config::CONFIG['ruby_install_name'])

  default_options :author => "FIXME author",
                  :description => "FIXME Description about this extension",
                  :version => "0.0.1"

  attr_reader :name, :author, :package_name, :description, :extension_name, :uuid, :version

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?
    @destination_root = File.expand_path(args.shift)
    @name             = base_name
    @extension_name   = @name
    @package_name      = @extension_name.downcase.gsub(/[^a-z]/, '')
    @uuid             = UUID.random_create.to_s
    extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory ''
      BASEDIRS.each { |path| m.directory path }

      # Create stubs
      m.template_copy_each %w[chrome.manifest Rakefile install.rdf update.rdf]
      m.template_copy_each %w[overlay.xul], "chrome/content"
      m.template "chrome/content/__extension__.js", "chrome/content/#{package_name.camelize}.js"

      m.dependency "install_rubigen_scripts", [destination_root, 'newextension'],
        :shebang => options[:shebang], :collision => :force
    end
  end

  protected
    def banner
      <<-EOS
Creates a ...

USAGE: #{spec.name} name
EOS
    end

    def add_options!(opts)
      opts.separator ''
      opts.separator 'Options:'
      # For each option below, place the default
      # at the top of the file next to "default_options"
      opts.on("-a", "--author=\"Your Name\"", String,
              "The extension author's name",
              "Default: none") { |x| options[:author] = x }
      opts.on("-d", "--description=\"This extension does...\"", String,
              "The description of the extension",
              "Default: none") { |x| options[:description] = x }
      opts.on("-v", "Show the #{File.basename($0)} version number and quit.")
      opts.on("-V", "--version=VERSION", String,
              "The version of new extension",
              "Default: #{options[:version]}") { |x| options[:version] = x }
    end

    def extract_options
      @author      = options[:author]
      @version     = options[:version]
      @description = options[:description]
    end

    # Installation skeleton.  Intermediate directories are automatically
    # created so don't sweat their absence here.
    BASEDIRS = %w(
      chrome/content
    )
end
