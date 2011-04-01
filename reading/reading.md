!SLIDE center
![Reading RubyGems](reading_rubygems.png)

!SLIDE bullets incremental

 * More you read code

 * Easier it is to read code

 * More you learn

 * More you understand

!SLIDE bullets incremental

 * More you read code

 * Easier it is to read code

 * More you learn

 * More you understand



!SLIDE

## "When we don't understand a process, we fall into magical thinking about results."
## — Jef Raskin

.notes Example isn't another way to teach, it is the only way to teach. — Albert Einstein
.notes "The source code is the source of information and knowledge." — Matz
.notes "Talk is cheap. Show me the code." — Linus Torvalds

!SLIDE bullets

# Got to find it first


 * Open Gem: `gem open`

 * `bundle show`

.notes  * `find . | grep "gem_name"` ... and wait
.notes  * `locate gem_name`
!SLIDE
          my_gem/
          ┣ my_gem.gemspec
          ┣ bin/
          ┣ test/
          ┗ lib/
            ┣ my_gem.rb
            ┗ my_gem/
              ┣ core.rb
              ┗ more.rb
!SLIDE
          my_gem/
          ┣ my_gem.gemspec
          ┣ bin/
          ┣ test/ ←START HERE!
          ┗ lib/
            ┣ my_gem.rb
            ┗ my_gem/
              ┣ core.rb
              ┗ more.rb
