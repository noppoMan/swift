// -*- swift -*-

//===----------------------------------------------------------------------===//
// Automatically Generated From validation-test/stdlib/Collection/Inputs/Template.swift.gyb
// Do Not Edit Directly!
//===----------------------------------------------------------------------===//

// RUN: %target-run-simple-swift
// REQUIRES: executable_test

import StdlibUnittest
import StdlibCollectionUnittest

var CollectionTests = TestSuite("Collection")

// Test collections using value types as elements.
do {
  var resiliencyChecks = CollectionMisuseResiliencyChecks.all
  resiliencyChecks.creatingOutOfBoundsIndicesBehavior = .trap

  CollectionTests.addRangeReplaceableBidirectionalCollectionTests(
    makeCollection: { (elements: [OpaqueValue<Int>]) in
      return DefaultedRangeReplaceableBidirectionalCollection(elements: elements)
    },
    wrapValue: identity,
    extractValue: identity,
    makeCollectionOfEquatable: { (elements: [MinimalEquatableValue]) in
      return DefaultedRangeReplaceableBidirectionalCollection(elements: elements)
    },
    wrapValueIntoEquatable: identityEq,
    extractValueFromEquatable: identityEq,
    resiliencyChecks: resiliencyChecks
  )
}

runAllTests()


