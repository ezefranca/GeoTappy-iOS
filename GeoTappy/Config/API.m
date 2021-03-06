//
//  API.m
//  GeoTappy
//
//  Created by Dylan Marriott on 11/10/14.
//  Copyright (c) 2014 Dylan Marriott. All rights reserved.
//

#import "API.h"
#import <CocoaPods-Keys/GeoTappyKeys.h>

@implementation API

static NSString* BASE_URL = @"https://api.geotappy.com/";

+ (NSString *)clientId {
    GeoTappyKeys* keys = [[GeoTappyKeys alloc] init];
    NSString* ret = keys.clientId;
    NSAssert(ret.length > 0, @"No client id set.");
    return ret;
}

+ (NSString *) clientSecret {
    GeoTappyKeys* keys = [[GeoTappyKeys alloc] init];
    NSString* ret = keys.clientSecret;
    NSAssert(ret.length > 0, @"No client secret set.");
    return ret;
}

+ (NSString *)tokenUrl {
    return [self baseUrlWithSuffix:@"oauth/token.json"];
}

+ (NSString *)profileUrl {
    return [self urlWithSuffix:@"profile.json"];
}

+ (NSString *)pushTokenUrl {
    return [self urlWithSuffix:@"profile/token.json"];
}

+ (NSString *)shareLocationUrl {
    return [self urlWithSuffix:@"location_shares"];
}

+ (NSString *)baseUrlWithSuffix:(NSString *)suffix {
    return [NSString stringWithFormat:@"%@%@", BASE_URL, suffix];
}

+ (NSString *)urlWithSuffix:(NSString *)suffix {
    return [NSString stringWithFormat:@"%@api/v1/%@", BASE_URL, suffix];
}

@end
