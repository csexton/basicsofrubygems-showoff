!SLIDE center
![Bundler](bundler.png)


!SLIDE commandline incremental
    $ bundle gem hue                                                                           ruby-1.9.2-p180
      create  hue/Gemfile
      create  hue/Rakefile
      create  hue/.gitignore
      create  hue/hue.gemspec
      create  hue/lib/hue.rb
      create  hue/lib/hue/version.rb
    Initializating git repo in /private/tmp/hue


!SLIDE commandline incremental
    $ cd hue
    $ git commit -m "Initial Commit"
    [master (root-commit) e69940e] Initial Commit
     6 files changed, 37 insertions(+), 0 deletions(-)
     create mode 100644 .gitignore
     create mode 100644 Gemfile
     create mode 100644 Rakefile
     create mode 100644 lib/hue.rb
     create mode 100644 lib/hue/version.rb
     create mode 100644 hue.gemspec

!SLIDE bullets incremental

# YAY. Now what?

 * Write a test
