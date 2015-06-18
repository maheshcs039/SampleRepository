//
//  GuildBrowserLogicTests.m
//  GuildBrowserLogicTests
//
//  Created by Mahesha, Shivaiah on 6/18/15.
//  Copyright (c) 2015 Charlie Fulton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "Character.h"
#import "Item.h"
@interface GuildBrowserLogicTests : XCTestCase
{
    NSDictionary *_characterDetailJson;
    Character *_testGuy;

}
@end

@implementation GuildBrowserLogicTests

- (void)setUp {
    [super setUp];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}


@end
