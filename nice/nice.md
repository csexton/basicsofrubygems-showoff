!SLIDE subsection
# Be Nice


!SLIDE bullets
# Nice Versions

 * Format `X.Y.Z`

 * Restrict what you need `>= 3.0`, `~> 3.0`, `~> 2.9.2`

.notes Let’s say you’re depending on the fnord gem version 2.y.z. If you specify your dependency as ">= 2.0.0" then, you’re good, right? What happens if fnord 3.0 comes out and it isn’t backwards compatible with 2.y.z? Your stuff will break as a result of using ">=". The better route is to specify your dependency with a "spermy" version specifier.

!SLIDE bullets incremental
# Nice Versions

 * Build Number (x.y.__Z__) - Every release

 * Minor (x.__Y__.z) - Backwards Compatible

 * Major (__X__.y.z) - Incompatible

 * Prerelease (x.y.z__beta2__) - Letters in the number?


!SLIDE

# Semantic Versioning

## http://semver.org/

!SLIDE

# Nice Names

!SLIDE

Eric Hodel says...

# use\_under\_scores

### Matches format of `require "gem_name"`

under\_strike, low\_line, low\_dash, under\_ tie, under\_bar, lazy\_hyphen, horizontal\_bar

!SLIDE

Dr. Brain says...

# Use dashes for extensions

### Extending another gem or adding namespace

.notes Github made this the De facto namespace. But it works well.

!SLIDE

He is both a doctor and a brain...

# NO UPPER CASE

Yelling is not nice

!SLIDE

Above all...

# Be overly clever

obscure pop-culture references are the best


!SLIDE

# Nice Directory Structure

!SLIDE

          my_gem/
          ┣ my_gem.gemspec
          ┣ spec/
          ┗ lib/
            ┣ my_gem.rb
            ┗ my_gem/

!SLIDE

# About the loadpath

Files in `lib/` are in the load path, so nest everything except <GEMNAME>.rb under that. Gives us a namespace.

    require "my_gem/factory"

loads

    /lib/my_gem/factory.rb

.notes put our code in lib/my_gem/base and libe/my_gem.rb would just require it.


