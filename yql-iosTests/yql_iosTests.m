//
//  yql_iosTests.m
//  yql-iosTests
//
//  Created by Guilherme Chapiewski on 10/19/12.
//  Copyright (c) 2012 Guilherme Chapiewski. All rights reserved.
//

#import "yql_iosTests.h"

@implementation yql_iosTests

- (void)setUp {
    [super setUp];
    yql = [[YQL alloc] init];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testShouldNotReturnResultForValidQuery {
    NSDictionary *results = [yql query:@"this is an invalid query"];
    STAssertNil(results, @"Results should be nil if a query is invalid");
}

- (void)testShouldReturnResultForValidQuery {
    NSDictionary *results = [yql query:@"show tables"];
    STAssertNotNil(results, @"Results should not be nil");
    int count = [[results valueForKeyPath:@"query.count"] intValue];
    STAssertTrue(count > 0, @"There should be at least one table");
}

@end
