# GitHub Action for SwiftLint

This Action executes [SwiftLint](https://github.com/realm/SwiftLint) and generates annotations from SwiftLint Violations.

## Usage

An example workflow(`.github/workflows/swiftlint.yml`) to executing SwiftLint follows:

```yaml
name: SwiftLint

on:
  pull_request:

jobs:
  SwiftLint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: GitHub Action for SwiftLint
        uses: Supereg/action-swiftlint@v4
```

### Supply arguments
```yaml
      - name: GitHub Action for SwiftLint with --strict
        uses: Supereg/action-swiftlint@v4
        with:
          args: --strict
```

### Only apply to changed files in PR

```yaml
      - name: GitHub Action for SwiftLint (Only files changed in the PR)
        uses: Supereg/action-swiftlint@v4
        env:
          DIFF_BASE: ${{ github.base_ref }}
```

### Modify the working directory

```yaml
      - name: GitHub Action for SwiftLint (Different working directory)
        uses: Supereg/action-swiftlint@v4
        env:
          WORKING_DIRECTORY: Source
```

## Secrets

- ~~Specifying `GITHUB_TOKEN` to `secrets` is required to using [Check Run APIs](https://developer.github.com/v3/checks/runs/) for generating annotations from SwiftLint Violations.~~
- Since 3.0.0, `GITHUB_TOKEN` is no longer needed.

## Example

Below is an image how this action might look like in your PR!

![screenshot](screenshot.png)

## Author

Andreas Bauer

## License

[MIT](LICENSE)
