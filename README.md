# Rush 🚀

![coverage][coverage_badge]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: Apache][license_badge]][license_link]
![Status][fast]

Rush is a powerful and flexible library for Flutter that accelerates UI development. It provides a set of utilities and extensions that make it easier to style and manage your Flutter widgets. With Rush, you can apply complex styles like gradients, shadows, and strokes with just a few lines of code. It also supports chaining methods for a more fluent and expressive coding style.

[Full Documentation](https://learn.codepur.dev/rush)

## Installation 💻

**❗ In order to start using Rush, you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

To install Rush, use the `flutter pub add` command:

```sh
dart pub add rush
```

[coverage_badge]: coverage_badge.svg
[license_badge]: https://img.shields.io/badge/license-apache-red.svg
[license_link]: https://opensource.org/license/apache-2-0/
[fast]: https://img.shields.io/badge/fast-3763f5

### Coverage Setup

flutter test --coverage --test-randomize-ordering-seed random

flutter test --coverage

flutter pub run coverage:format

genhtml coverage/lcov.info -o coverage/html
