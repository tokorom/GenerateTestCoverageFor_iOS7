# Guardfile
# vim:filetype=ruby

require 'guard/plugin'

SCHEME = 'Tests'
SUFFIX = '2>&1 | xcpretty -c'

module ::Guard
  class InlineGuard < ::Guard::Plugin

    def xctest(only = nil)
      system("xctest-runner -scheme #{SCHEME} #{only} #{SUFFIX}")
    end

    def run_all
      xctest
    end

    def run_on_changes(paths)
      test_class = File.basename(paths[0], '.*')
      test_case = nil

      only = nil
      unless test_class.empty?
        only = "-test #{test_class}" + (test_case ? "/#{test_case}" : '')
      end
      xctest(only)
    end
  end
end

guard :inline_guard do
  watch /.*\.[mh]$/
end
