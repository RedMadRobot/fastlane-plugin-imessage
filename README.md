# imessage plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-imessage)

## Getting Started

- Create file `fastlane/Pluginfile`.
- Add to file `gem 'fastlane-plugin-imessage'`
- Run `$ fastlane install_plugins`

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-imessage`, add it to your project by running:

```bash
fastlane add_plugin imessage
```

## About imessage

send imessage

## Options

| Key  | Description                    | Env Var           | Default |
|------|--------------------------------|-------------------|---------|
| text | Text of the message to be sent | FL_IMESSAGE_TEXT  |         |
| to   | message buddy                  | FL_IMESSAGE_BUDDY |         |

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
