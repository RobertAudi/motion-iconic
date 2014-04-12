Motion::Iconic
==============

RubyMotion wrapper around [FontAwesomeKit](https://github.com/PrideChung/FontAwesomeKit).

Installation
------------

Add this line to your application's Gemfile:

    gem "motion-iconic"

And then execute:

    $ bundle

Dependencies
------------

Motion::Iconic depends on [FontAwesomeKit](https://github.com/PrideChung/FontAwesomeKit) as a CocoaPod. You do not need to add anything to your `Rakefile`, but you do need to run `rake pod:install`.

Usage
-----

```ruby
Motion::Iconic::Icon.awesomeIcon(:codeFork, withSize:42)
```

That's quite a mouthful... So `Motion::Iconic::Icon` is also aliased to `Mic`.

```ruby
Mic.foundationIcon(:socialGithub, withSize:73)
```

Here is the full list of implemented methods:

- `Mic.icon(icon, withSize:size, inCollection:collection)` &mdash; returns an `FAK*` instance.
- `Mic.awesomeIcon(icon, withSize:size)` &mdash; returns an `FAKFontAwesome` instance.
- `Mic.foundationIcon(icon, withSize:size)` &mdash; returns an `FAKFoundationIcons` instance.
- `Mic.ionIcon(icon, withSize:size)` &mdash; returns an `FAKIonIcons` instance.
- `Mic.zocialIcon(icon, withSize:size)` &mdash; returns an `FAKZocial` instance.

For information on what you can do with those objects, refer to the [FontAwesomeKit documentation](https://github.com/PrideChung/FontAwesomeKit#example-usage).

Contributing
------------

1. Fork it ( http://github.com/AzizLight/motion-iconic/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
