!SLIDE subsection
# Jeweler


!SLIDE commandline incremental

    $ jeweler hue --rspec
       create	.gitignore
       create	Rakefile
       create	Gemfile
       create	LICENSE.txt
       create	README.rdoc
       create	.document
       create	lib
       create	lib/hue.rb
       create	spec
       create	spec/spec_helper.rb
       create	spec/hue_spec.rb
       create	.rspec
    Jeweler has prepared your gem in hue


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

##### spec/hue\_spec.rb

    @@@ Ruby
    describe "Hue" do
      it "should print escape codes for red" do
        s = Hue.red("test")
        s.include?("\033[31m").should be_true
      end
    end

!SLIDE commandline incremental

    $ rspec spec
    F

    Failures:

      1) Hue should print escape codes for red
         Failure/Error: Hue.red("test").should contain?("\033[31m")
         NameError:
           uninitialized constant RSpec::Core::ExampleGroup::Nested_1::Hue

    Finished in 0.00041 seconds
    1 example, 1 failure

!SLIDE

spec/hue\_spec.rb
    @@@ Ruby
    module Hue
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
    (in /Users/csexton/src/hue)
    rake aborted!
    "FIXME" or "TODO" is not a description

!SLIDE

    @@@ Ruby
    Jeweler::Tasks.new do |gem|
      # gem is a Gem::Specification
      gem.name = "hue"
      gem.homepage = "http://github.com/csexton/hue"
      gem.license = "MIT"
      gem.summary = %q{Prints purdy colors to the console using ANSI escapes}
      gem.description = %q{ANSI Colors}
      gem.email = "csexton@codeography.com"
      gem.authors = ["Christopher Sexton"]
    end

!SLIDE commandline incremental

    $ rake version:write
    (in /Users/csexton/src/newbiegems-showoff/hue)
    Updated version: 0.0.0
    $ cat VERSION
     0.0.0
.notes updates git

!SLIDE commandline incremental

    $ rake build                                                    ruby-1.9.2-p180
    (in /Users/csexton/src/newbiegems-showoff/hue)
      Successfully built RubyGem
      Name: hue
      Version: 0.0.0
      File: hue-0.0.0.gem

!SLIDE commandline incremental

    $ gem install pkg/hue-0.0.0.gem
    Successfully installed hue-0.0.0
    1 gem installed

!SLIDE commandline

<pre>
$ irb
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
</pre>

!SLIDE commandline

<pre>
$ irb
>> require 'hue'
=> true
>> puts Hue.red "yay"
<span style="color:red">yay</span>
=> nil
</pre>

!SLIDE commandline incremental

    $ mkdir bin
    $ vim bin/hue

!SLIDE


### bin/hue.rb
    @@@ Ruby
    #! /usr/bin/env ruby
    $:.unshift File.dirname(__FILE__)+'/../lib'
    require 'hue'
    puts "Lookit: #{ Hue.red "Red" }"

!SLIDE
TODO: add binary

TODO: add deps
