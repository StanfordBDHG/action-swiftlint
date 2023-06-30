//
// This source file is part of the Stanford Biodesign for Digital Health open-source project
//
// SPDX-FileCopyrightText: 2023 Stanford University and the project authors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//


import XCTest

import errorsTests

var tests = [XCTestCaseEntry]()
tests += errorsTests.allTests()
XCTMain(tests)
