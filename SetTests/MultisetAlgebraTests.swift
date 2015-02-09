//  Copyright (c) 2015 Rob Rix. All rights reserved.

import Set
import XCTest

final class MultisetAlgebraTests: XCTestCase {
	func testUnionOfMultisetsSumsMultiplicities() {
		XCTAssertEqual((Multiset(1, 2, 3) + Multiset(1)).count(1), 2)
	}

	func testIntersectionOfMultisetsMinimizesMultiplicities() {
		XCTAssertEqual((Multiset(1, 1, 1, 2, 3) & Multiset(1, 1, 2, 4)), Multiset(1, 1, 2))
	}

	func testComplementOfMultisetsSubtractsMultiplicities() {
		XCTAssertEqual((Multiset(1, 1, 1, 2, 3) - Multiset(1, 1, 2, 4)), Multiset(1, 3))
	}
}
