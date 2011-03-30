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
