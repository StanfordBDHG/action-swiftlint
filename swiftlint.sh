#!/bin/bash

#
# This source file is part of the Stanford Biodesign for Digital Health open-source project
#
# SPDX-FileCopyrightText: 2023 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
#

# convert swiftlint's output into GitHub Actions Logging commands
# https://help.github.com/en/github/automating-your-workflow-with-github-actions/development-tools-for-github-actions#logging-commands

function stripPWD() {
    sed -E "s/$(pwd|sed 's/\//\\\//g')\///"
}

function convertToGitHubActionsLoggingCommands() {
    sed -E 's/^(.*):([0-9]+):([0-9]+): (warning|error|[^:]+): (.*)/::\4 file=\1,line=\2,col=\3::\5/'
}

if ! ${DIFF_BASE+false};
then
	changedFiles=$(git --no-pager diff --name-only --relative FETCH_HEAD $(git merge-base FETCH_HEAD $DIFF_BASE) -- '*.swift')

	if [ -z "$changedFiles" ]
	then
		echo "No Swift file changed"
		exit
	fi
fi

set -o pipefail && ${SWIFTLINT_BINARY} "$@" -- $changedFiles | stripPWD | convertToGitHubActionsLoggingCommands
