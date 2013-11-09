//
//  FKFlickrStatsGetPhotostreamDomains.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrStatsGetPhotostreamDomains.h" 

@implementation FKFlickrStatsGetPhotostreamDomains

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 0;
}

- (NSString *) name {
    return @"flickr.stats.getPhotostreamDomains";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.date) {
		valid = NO;
		[errorDescription appendString:@"'date', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.date) {
		[args setValue:self.date forKey:@"date"];
	}
	if(self.per_page) {
		[args setValue:self.per_page forKey:@"per_page"];
	}
	if(self.page) {
		[args setValue:self.page forKey:@"page"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrStatsGetPhotostreamDomainsError_UserDoesNotHaveStats:
			return @"User does not have stats";
		case FKFlickrStatsGetPhotostreamDomainsError_NoStatsForThatDate:
			return @"No stats for that date";
		case FKFlickrStatsGetPhotostreamDomainsError_InvalidDate:
			return @"Invalid date";
		case FKFlickrStatsGetPhotostreamDomainsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrStatsGetPhotostreamDomainsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrStatsGetPhotostreamDomainsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrStatsGetPhotostreamDomainsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrStatsGetPhotostreamDomainsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrStatsGetPhotostreamDomainsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrStatsGetPhotostreamDomainsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrStatsGetPhotostreamDomainsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrStatsGetPhotostreamDomainsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrStatsGetPhotostreamDomainsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrStatsGetPhotostreamDomainsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end