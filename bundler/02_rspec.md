!SLIDE smaller

.filename hue.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "hue"
      s.version     = Hue::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["TODO: Write your name"]
      s.email       = ["TODO: Write your email address"]
      s.homepage    = ""
      s.summary     = %q{TODO: Write a gem summary}
      s.description = %q{TODO: Write a gem description}

      s.rubyforge_project = "hue"

      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]


    end

!SLIDE smaller
.filename hue.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "hue"
      s.version     = Hue::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["TODO: Write your name"]
      s.email       = ["TODO: Write your email address"]
      s.homepage    = ""
      s.summary     = %q{TODO: Write a gem summary}
      s.description = %q{TODO: Write a gem description}

      s.rubyforge_project = "hue"

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
    Using hue (0.0.1) from source at /src/hue
    Installing rspec-core (2.4.0)
    Installing rspec-expectations (2.4.0)
    Installing rspec-mocks (2.4.0)
    Installing rspec (2.4.0)
    Using bundler (1.0.10)

!SLIDE commandline incremental

    $ mkdir spec
    $ vim spec/spec_helper.rb
    $ vim spec/hue_spec.rb

!SLIDE

.filename spec/spec\_helper.rb
    @@@ Ruby
    $:.unshift File.dirname(__FILE__) + '/../lib'
    require 'rspec'
    require 'hue'

!SLIDE

.filename spec/hue\_spec.rb

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

.filename lib/hue.rb
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

!SLIDE center

![YEAH](fuckyeah.png)
