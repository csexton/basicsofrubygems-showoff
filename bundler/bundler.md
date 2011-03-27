!SLIDE subsection
# Bundler


!SLIDE commandline incremental
    $ bundle gem purdy_color                                                                           ruby-1.9.2-p180
      create  purdy_color/Gemfile
      create  purdy_color/Rakefile
      create  purdy_color/.gitignore
      create  purdy_color/purdy_color.gemspec
      create  purdy_color/lib/purdy_color.rb
      create  purdy_color/lib/purdy_color/version.rb
    Initializating git repo in /private/tmp/purdy_color


!SLIDE commandline incremental
    $ cd purdy_color
    $ git commit -m "Initial Commit"
    [master ca6108d] Initial Commit
     4 files changed, 56 insertions(+), 1 deletions(-)
     create mode 100644 spec/purdy_color_spec.rb
     create mode 100644 spec/spec_helper.rb


!SLIDE smaller

.filename purdy\_color.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "purdy_color"
      s.version     = PurdyColor::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["TODO: Write your name"]
      s.email       = ["TODO: Write your email address"]
      s.homepage    = ""
      s.summary     = %q{TODO: Write a gem summary}
      s.description = %q{TODO: Write a gem description}

      s.rubyforge_project = "purdy_color"

      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]


    end

!SLIDE smaller
.filename purdy\_color.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "purdy_color"
      s.version     = PurdyColor::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["TODO: Write your name"]
      s.email       = ["TODO: Write your email address"]
      s.homepage    = ""
      s.summary     = %q{TODO: Write a gem summary}
      s.description = %q{TODO: Write a gem description}

      s.rubyforge_project = "purdy_color"

      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]

      s.add_development_dependency 'rspec', '~> 2.4.0'
    end

!SLIDE commandline incremental

    $ bundle
    Fetching source index for http://rubygems.org/
    Using diff-lcs (1.1.2)
    Using purdy_color (0.0.1) from source at /private/tmp/purdy_color
    Installing rspec-core (2.4.0)
    Installing rspec-expectations (2.4.0)
    Installing rspec-mocks (2.4.0)
    Installing rspec (2.4.0)
    Using bundler (1.0.10)

!SLIDE commandline incremental

    $ mkdir spec
    $ vim spec/spec_helper.rb
    $ vim spec/purdy_color_spec.rb

!SLIDE

.filename spec/spec\_helper.rb
    @@@ Ruby
    $:.unshift(File.dirname(__FILE__)+ '../lib')
    require 'rspec'
    require 'purdy_color'

!SLIDE

.filename spec/purdy\_color\_spec.rb

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

.filename spec/purdy\_color\_spec.rb
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
    $ mkdir bin
    $ vim bin/purdy_color
    $ chmod +x bin/purdy_color

!SLIDE

.filename bin/purdy\_color
    @@@ Ruby
    #! /usr/bin/env ruby

    $:.unshift File.dirname(__FILE__) + '../lib'
    require 'purdy_color'

    puts PurdyColor.red ARGV.join(" ")

!SLIDE commandline incremental

    $ git commit -am "Purdy exectuable"
    [master 18d8011] Purdy exectuable
     2 files changed, 10 insertions(+), 4 deletions(-)
     create mode 100755 bin/purdy_color


!SLIDE commandline incremental

    $ rake build
    (in /Users/csexton/src/newbiegems-showoff/purdy_color)
    rake aborted!
    "FIXME" or "TODO" is not a description

!SLIDE smaller

.filename purdy_color.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "purdy_color"
      s.version     = PurdyColor::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["TODO: Write your name"]
      s.email       = ["TODO: Write your email address"]
      s.homepage    = ""
      s.summary     = %q{TODO: Write a gem summary}
      s.description = %q{TODO: Write a gem description}

      s.rubyforge_project = "purdy_color"

      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]

      s.add_development_dependency 'rspec', '~> 2.4.0'
    end


!SLIDE smaller

.filename purdy_color.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "purdy_color"
      s.version     = PurdyColor::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["Christopher Sexton"]
      s.email       = ["csexton@codeography.com"]
      s.homepage    = "http://codeography.com/purdy_colors"
      s.summary     = %q{Prints purdy colors to the console using ANSI escapes}
      s.description = %q{Purdy ANSI Colors}

      s.rubyforge_project = "purdy_color"

      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]

      s.add_development_dependency 'rspec', '~> 2.4.0'
    end

!SLIDE commandline incremental

    $ rake build
    (in /Users/csexton/src/purdy_color)
    purdy_color 0.0.1 built to pkg/purdy_color-0.0.1.gem

    $ rake install
    (in /Users/csexton/src/purdy_color)
    purdy_color 0.0.1 built to pkg/purdy_color-0.0.1.gem
    purdy_color (0.0.1) installed

!SLIDE commandline

<pre>
$ purdy_color yay
&nbsp;
</pre>

!SLIDE commandline
<pre>
$ purdy_color yay
<span style="color:red">yay</span>
</pre>

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
>> require 'purdy_color'
&nbsp;
&nbsp;
&nbsp;
&nbsp;
</pre>

!SLIDE commandline

<pre>
$ irb
>> require 'purdy_color'
=> true
&nbsp;
&nbsp;
&nbsp;
</pre>

!SLIDE commandline

<pre>
$ irb
>> require 'purdy_color'
=> true
>> puts PurdyColor.red "yay"
&nbsp;
&nbsp;
</pre>
!SLIDE commandline

<pre>
$ irb
>> require 'purdy_color'
=> true
>> puts PurdyColor.red "yay"
<span style="color:red">yay</span>
=> nil
</pre>
