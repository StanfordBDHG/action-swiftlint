#
# This source file is part of the Stanford Biodesign for Digital Health open-source project
#
# SPDX-FileCopyrightText: 2023 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
#

FROM ghcr.io/realm/swiftlint:latest

COPY LICENSE README.md /

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
