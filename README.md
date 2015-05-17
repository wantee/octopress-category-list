# OctopressCategoryList

A Octopress Ink plugin to generate a category list page for your site.

[![Build Status](https://travis-ci.org/wantee/octopress-category-list.svg)](https://travis-ci.org/wantee/octopress-category-list)
[![Gem Version](https://badge.fury.io/rb/octopress-category-list.svg)](http://badge.fury.io/rb/octopress-category-list)
[![License](http://img.shields.io/:license-mit-blue.svg)](https://github.com/wantee/octopress-category-list/blob/master/LICENSE.txt)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'octopress-category-list'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-category-list

## Usage

Make sure generating category indexes in your site. Set this in your theme config:

```yaml
category_indexes:  true
```

Then add navigation to categories or other place to link to `/categories/`:

```yaml
main_nav:
  - { url: '/categories/', title: 'Categories' }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/wantee/octopress-category-list/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
