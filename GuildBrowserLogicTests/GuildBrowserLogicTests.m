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
    NSURL *dataServiceURL = [[NSBundle bundleForClass:self.class]
                             URLForResource:@"character" withExtension:@"json"];
    
    // 4
    NSData *sampleData = [NSData dataWithContentsOfURL:dataServiceURL];
    NSError *error;
    
    // 5
    id json = [NSJSONSerialization JSONObjectWithData:sampleData
                                              options:kNilOptions
                                                error:&error];
    XCTAssert(json, @"invalid test data");
    
    
    _characterDetailJson = json;
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)testCreateCharacterFromDetailJson
{
    // 2
    Character *testGuy1 = [[Character alloc] initWithCharacterDetailData:_characterDetailJson];
    XCTAssert(testGuy1, @"Could not create character from detail json");
    
    // 3
    Character *testGuy2 = [[Character alloc] initWithCharacterDetailData:nil];
    XCTAssert(testGuy2, @"Could not create character from nil data");
}
-(void)testCreateCharacterFromDetailJsonProps
{
    XCTAssert(_testGuy.thumbnail, @"borean-tundra/171/40508075-avatar.jpg", @"thumbnail url is wrong");
    XCTAssert(_testGuy.name, @"Hagrel", @"name is wrong");
    XCTAssert(_testGuy.battleGroup, @"Emberstorm", @"battlegroup is wrong");
    XCTAssert(_testGuy.realm, @"Borean Tundra", @"realm is wrong");
    XCTAssert(_testGuy.achievementPoints, @"3130", @"achievement points is wrong");
    
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
