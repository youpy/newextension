require File.dirname(__FILE__) + '/test_helper.rb'
require 'fileutils'
require 'pathname'

include FileUtils

class TestNewextension < Test::Unit::TestCase
  def setup
    @testdir = Pathname.new(File.dirname(__FILE__) + '/foo_extension')
    system(Pathname.new(File.dirname(__FILE__)).realpath + '../bin/newextension',
           '-a youpy',
           '-V 0.11',
           @testdir)
  end

  def teardown
    rm_rf @testdir
  end

  def test_create
    assert File.directory?(@testdir)
    cd @testdir do
      assert_equal([
                    'chrome',
                    'chrome/content',
                    'chrome/content/FooExtension.js',
                    'chrome/content/overlay.xul',
                    'chrome/skin',
                    'chrome.manifest',
                    'install.rdf',
                    'Rakefile',
                   ].sort, Dir['**/*'].sort)

      assert_file_contains(/FooExtension/, 'chrome/content/FooExtension.js')
      assert_file_contains(/FooExtension/, 'chrome/content/FooExtension.js')
      assert_file_contains(/chrome:\/\/foo_extension/, 'chrome/content/overlay.xul')
      assert_file_contains(/FooExtensionOverlay/, 'chrome/content/overlay.xul')
      assert_file_contains(/chrome:\/\/foo_extension/, 'chrome.manifest')
      assert_file_contains(/youpy/, 'install.rdf')
      assert_file_contains(/0\.11/, 'install.rdf')
      assert_file_contains(/EXTENSION_NAME="foo_extension"/, 'Rakefile')
    end
  end
end
