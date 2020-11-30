# Wurl Rubocop Style ![CI](https://github.com/github/wurl-rubocop-style/workflows/CI/badge.svg?event=push)

This repository provides recommended RuboCop configuration and additional Cops for use on Wurl open source and internal Ruby projects.

It is a fork and is heavily based on [Rubocop Github](https://github.com/github/rubocop-github).
If you ever find yourself in a situation where there is something that is not mentioned here, going to the most current Github Rubocop Style Guide for a decision will likely have you doing The Right Thing&trade;.

## Usage

Rubocop 0.68 removed performance cops and 0.72 removed Rails cops. However, upgrading `rubocop-github` without modification will almost definitely create very many new offenses. The current version of this gem exposes the "legacy" configuration under `config/default.yml` and `config/rails.yml` which should be used *if and only if* the version of rubocop is locked to `< 0.68` in your project (which it should be unless you `bundle update rubocop`). It also exposes an "edge" configuration under `config/default_edge.yml` and `config/rails_edge.yml` so that the changes can be tested without introducing breaking changes.

### Legacy usage

**Gemfile**

``` ruby
gem "rubocop", "< 0.68"
gem "rubocop-github"
```

**.rubocop.yml**

``` yaml
inherit_gem:
  rubocop-github:
    - config/default.yml
    - config/rails.yml
```

### Edge usage

**Gemfile**

``` ruby
gem "rubocop-github"
gem "rubocop-performance", require: false
gem "rubocop-rails", require: false
```

**.rubocop.yml**

``` yaml
inherit_gem:
  rubocop-github:
    - config/default_edge.yml
    - config/rails_edge.yml
```

## Testing

`bundle install`
`bundle exec rake test`

## The Cops

All cops are located under [`lib/rubocop/cop/github`](lib/rubocop/cop/github), and contain examples/documentation.
