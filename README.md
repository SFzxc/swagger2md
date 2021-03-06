# Swagger2md  [![Gem Version](https://badge.fury.io/rb/swagger2md.svg)](https://badge.fury.io/rb/swagger2md) [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

Generate API docs from Swagger file into markdown file.

## Installation

Install it yourself as:

    $ gem install swagger2md

## Usage

```
$ swagger2md --help

Usage: swagger2md [options]
    -i, --input INPUT                Specific swagger file path
    -o, --output [OUTPUT]            Specific output file name [Option]
```

```
$ swagger2md -i swagger.json -o docs.md
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/swagger2md. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Swagger2md project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/swagger2md/blob/master/CODE_OF_CONDUCT.md).
