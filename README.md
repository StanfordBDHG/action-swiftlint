<!-- 

This source file is part of the Stanford Biodesign for Digital Health open-source project

SPDX-FileCopyrightText: 2023 Stanford University and the project authors (see CONTRIBUTORS.md)

SPDX-License-Identifier: MIT

-->

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
        uses: stanfordbdhg/action-swiftlint@v4
```

### Supply arguments
```yaml
      - name: GitHub Action for SwiftLint with --strict
        uses: stanfordbdhg/action-swiftlint@v4
        with:
          args: --strict
```

### Only apply to changed files in PR

```yaml
      - name: GitHub Action for SwiftLint (Only files changed in the PR)
        uses: stanfordbdhg/action-swiftlint@v4
        env:
          DIFF_BASE: ${{ github.base_ref }}
```

### Modify the working directory

```yaml
      - name: GitHub Action for SwiftLint (Different working directory)
        uses: stanfordbdhg/action-swiftlint@v4
        env:
          WORKING_DIRECTORY: Source
```

## Example

Below is an image how this action might look like in your PR!

![screenshot](screenshot.png)

## License

This project is licensed under the MIT License. See [Licenses](https://github.com/StanfordBDHG/action-swiftlint/tree/main/LICENSES) for more information.


## Contributors

This project is developed as part of the Stanford Byers Center for Biodesign at Stanford University based on work done by [Norio Nomura](https://github.com/norio-nomura/action-swiftlint).
See [CONTRIBUTORS.md](https://github.com/StanfordBDHG/action-swiftlint/tree/main/CONTRIBUTORS.md) for a full list of all action-swiftlint contributors.

![Stanford Byers Center for Biodesign Logo](https://raw.githubusercontent.com/StanfordBDHG/.github/main/assets/biodesign-footer-light.png#gh-light-mode-only)
![Stanford Byers Center for Biodesign Logo](https://raw.githubusercontent.com/StanfordBDHG/.github/main/assets/biodesign-footer-dark.png#gh-dark-mode-only)