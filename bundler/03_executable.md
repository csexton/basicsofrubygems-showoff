!SLIDE commandline incremental
    $ mkdir bin
    $ vim bin/hue
    $ chmod +x bin/hue

!SLIDE

.filename bin/hue
    @@@ Ruby
    #!/usr/bin/env ruby
    $:.unshift File.dirname(__FILE__) + '/../lib'
    require 'hue'

    puts Hue.red ARGV.join(" ")

!SLIDE commandline incremental

    $ git commit -am "exectuable"
    [master 18d8011] exectuable
     2 files changed, 10 insertions(+), 4 deletions(-)
     create mode 100755 bin/hue
    $ rake build
    (in /Users/csexton/src/hue)
    rake aborted!
    "FIXME" or "TODO" is not a description

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


!SLIDE smaller

.filename hue.gemspec
    @@@ Ruby
    Gem::Specification.new do |s|
      s.name        = "hue"
      s.version     = Hue::VERSION
      s.platform    = Gem::Platform::RUBY
      s.authors     = ["Christopher Sexton"]
      s.email       = ["csexton@codeography.com"]
      s.homepage    = "http://codeography.com/hues"
      s.summary     = %q{Prints purdy colors to the console using ANSI escapes}
      s.description = %q{ANSI Colors}

      s.rubyforge_project = "hue"

      s.files         = `git ls-files`.split("\n")
      s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
      s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
      s.require_paths = ["lib"]

      s.add_development_dependency 'rspec', '~> 2.4.0'
    end

!SLIDE commandline incremental

    $ gem build hue.gemspec
    Successfully built RubyGem
    Name: hue
    Version: 0.0.1
    File: hue-0.0.1.gem

    $ gem install hue-0.0.1
    hue (0.0.1) installed

!SLIDE commandline

<pre>
$ hue yay
&nbsp;
</pre>

!SLIDE commandline
<pre>
$ hue yay
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
>> require 'hue'
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
