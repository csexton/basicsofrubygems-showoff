!SLIDE subsection
# Jeweler


!SLIDE commandline incremental

    $ jeweler purdy_color --rspec
       create	.gitignore
       create	Rakefile
       create	Gemfile
       create	LICENSE.txt
       create	README.rdoc
       create	.document
       create	lib
       create	lib/purdy_color.rb
       create	spec
       create	spec/spec_helper.rb
       create	spec/purdy_color_spec.rb
       create	.rspec
    Jeweler has prepared your gem in purdy_color


!SLIDE commandline incremental

    $ bundle install
    Fetching source index for http://rubygems.org/
    Using rake (0.8.7)
    Using bundler (1.0.10)
    Using diff-lcs (1.1.2)
    Using git (1.2.5)
    Using jeweler (1.5.2)
    Using rcov (0.9.9)
    Using rspec-core (2.3.1)
    Using rspec-expectations (2.3.0)
    Using rspec-mocks (2.3.0)
    Using rspec (2.3.0)

    Your bundle is complete!
    Use `bundle show [gemname]` to see
    where a bundled gem is installed.

!SLIDE

spec/purdy\_color\_spec.rb
    @@@ Ruby
    describe "PurdyColor" do
      it "should print escape codes for red" do
        s = PurdyColor.red("test")
        s.include?("\033[31m").should be_true
      end
    end

!SLIDE commandline incremental

    $ rspec spec
    F

    Failures:

      1) PurdyColor should print escape codes for red
         Failure/Error: PurdyColor.red("test").should contain?("\033[31m")
         NameError:
           uninitialized constant RSpec::Core::ExampleGroup::Nested_1::PurdyColor

    Finished in 0.00041 seconds
    1 example, 1 failure

!SLIDE

spec/purdy\_color\_spec.rb
    @@@ Ruby
    module PurdyColor
      def self.red(str)
        "\033[31m#{str}\033[0ma"
      end
    end

!SLIDE commandline incremental
    $ rspec spec
    .
    Finished in 0.0005 seconds
    1 example, 0 failures

!SLIDE commandline incremental

    $ rake build
    (in /Users/csexton/src/newbiegems-showoff/purdy_color)
    rake aborted!
    "FIXME" or "TODO" is not a description

!SLIDE

    @@@ Ruby
    Jeweler::Tasks.new do |gem|
      # gem is a Gem::Specification
      gem.name = "purdy_color"
      gem.homepage = "http://github.com/csexton/purdy_color"
      gem.license = "MIT"
      gem.summary = %Q{colors are purdy}
      gem.description = %Q{Color strings with ansi escape codes}
      gem.email = "chris@mailinator.com"
      gem.authors = ["Christopher Sexton"]
    end

!SLIDE commandline incremental

    $ rake version:write
    (in /Users/csexton/src/newbiegems-showoff/purdy_color)
    Updated version: 0.0.0
    $ cat VERSION
     0.0.0
.notes updates git

!SLIDE commandline incremental

    $ rake build                                                    ruby-1.9.2-p180
    (in /Users/csexton/src/newbiegems-showoff/purdy_color)
      Successfully built RubyGem
      Name: purdy_color
      Version: 0.0.0
      File: purdy_color-0.0.0.gem

!SLIDE commandline incremental

    $ gem install pkg/purdy_color-0.0.0.gem
    Successfully installed purdy_color-0.0.0
    1 gem installed

!SLIDE commandline incremental
<pre>
>> require 'purdy_color'
=> true
>> puts PurdyColor.red "yay"
<span style="color:red">yay</span>
=> nil
</pre>

