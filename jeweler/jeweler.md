!SLIDE subsection
# Jeweler


!SLIDE commandline incremental

    $ jewler purdy_color
      create	.gitignore
      create	Rakefile
      create	Gemfile
      create	LICENSE.txt
      create	README.rdoc
      create	.document
      create	lib
      create	lib/purdy_color.rb
      create	test
      create	test/helper.rb
      create	test/test_purdy_color.rb
    Jeweler has prepared your gem in purdy_color
    $ cd purdy_color

!SLIDE commandline incremental

    $ bundle install
    Fetching source index for http://rubygems.org/
    Using rake (0.8.7)
    Using bundler (1.0.10)
    Using git (1.2.5)
    Using jeweler (1.5.2)
    Using rcov (0.9.9)
    Installing shoulda (2.11.3)
    Your bundle is complete!
    Use `bundle show [gemname]` to see
    where a bundled gem is installed.

!SLIDE

### lib/purdy\_color.rb
    @@@ Ruby
    module PurdyColor
      def self.red(str)
        "#{}"
      end
    end

