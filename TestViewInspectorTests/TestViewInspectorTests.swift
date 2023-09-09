//
//  TestViewInspectorTests.swift
//  TestViewInspectorTests
//
//  Created by 山本大翔 on 2023/09/10.
//

import XCTest
import ViewInspector
@testable import TestViewInspector

final class TestViewInspectorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        try XCTContext.runActivity(named: "static string") { _ in
                    let view = ContentView()
                    let text = try view.inspect().vStack().text(0).string() //3
                    XCTAssertEqual(text, "Hello, world!")
                }

                try XCTContext.runActivity(named: "dynamic string") { _ in
                    let view = ContentView()
                    var count = try view.inspect().vStack().text(1).string()
                    XCTAssertEqual(count, "0")
                    
                    try view.inspect().vStack().button(2).tap()
                    count = try view.inspect().vStack().text(1).string()
                    XCTAssertEqual(count, "1")
                                
                }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
