# GitHub Action for PHPLint

GitHub Action implementation of the PHPLint Package provided by [@Overtrue/phplint](https://github.com/overtrue/phplint). 

## Usage

Use with [GitHub Actions](https://github.com/features/actions)

_.github/workflows/phplint.yml_

```
name: PHP Linting
on: pull_request
jobs:
  phplint:
    runs-on: ubuntu-latest
    steps:
        - uses: actions/checkout@v1
        - uses: michaelw90/PHP-Lint@master
```

If provided, a `.phplint.yml` file in the root will be used for configuration during run of the Action.

## See it in practice

You can find a working and not working PR here:
https://github.com/michaelw90/PHP-Lint-Demo/pulls
