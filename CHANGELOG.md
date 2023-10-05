## HEAD (unreleased)

## 1.2.1
- Added Dockerfile for development
- Force UTF-8 encoding on text/html parts

## 1.2.0

- Rescue `Mail::AddressList` parse errors ([#34](https://github.com/thoughtbot/griddler-sendgrid/pull/34))
- Update SendGrid API links ([#32](https://github.com/thoughtbot/griddler-sendgrid/pull/32) and [#33](https://github.com/thoughtbot/griddler-sendgrid/pull/33))

## 1.1.0
* Expose charsets as Hash in normalized params ([#29](https://github.com/thoughtbot/griddler-sendgrid/pull/29/))
* Add support for Sendgrid spam check ([#30](https://github.com/thoughtbot/griddler-sendgrid/pull/30))
* Set minimum version of `mail` to be `2.7.0` so that UTF-8 encoded emails continue to work properly
