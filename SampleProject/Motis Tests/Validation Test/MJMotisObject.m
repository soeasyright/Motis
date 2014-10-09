//
//  MJTestObject.m
//  Motis
//
//  Created by Joan Martin on 18/03/14.
//  Copyright (c) 2014 Mobile Jazz. All rights reserved.
//

#import "MJMotisObject.h"

#import "NSObject+Motis.h"

@implementation MJMotisObject

+ (NSDictionary*)mts_mapping
{
    return @{@"bool": mts_key(boolField),
             
             @"integer": mts_key(integerField),
             @"unsigned_integer": mts_key(unsignedIntegerField),
             
             @"float": mts_key(floatField),
             @"double": mts_key(doubleField),
             
             @"string": mts_key(stringField),
             @"number": mts_key(numberField),
             @"url": mts_key(urlField),
             @"date": mts_key(dateField),
             
             @"id": mts_key(idField),
             @"id_protocol": mts_key(idProtocolField),
             
             @"string1.string2.string3" : mts_key(stringField),
             @"url1.url2.url3" : mts_key(urlField),
             
             @"test_object": mts_key(testObject),
             @"motis_object": mts_key(motisObject),
             };
    
}

#pragma mark Property Nillification

- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqualToString:mts_key(boolField)])
        self.boolField = NO;
}

#pragma mark Loggers

- (void)mts_invalidValue:(id)value forKey:(NSString *)key error:(NSError *)error
{
    NSLog(@"INVALID VALUE %@ FOR KEY %@", [value description], key);
}

@end
