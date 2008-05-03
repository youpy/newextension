require 'test/unit'
require File.dirname(__FILE__) + '/../lib/newextension'

module Test::Unit::Assertions
  def assert_file_contains(pattern, filename, message = '')
    _wrap_assertion do
      pattern = case(pattern)
                when String
                  Regexp.new(Regexp.escape(pattern))
                else
                  pattern
                end
      full_message = build_message(message, "content of file <?> expected to be =~\n<?>.", filename, pattern)
      assert_block(full_message) { File.open(filename).read =~ pattern }
    end
  end
end
