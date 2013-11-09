//
//  FKFlickrPhotosSuggestionsRejectSuggestion.h
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosSuggestionsRejectSuggestionError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosSuggestionsRejectSuggestionError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosSuggestionsRejectSuggestionError;

/*

Reject a suggestion for a photo.




*/
@interface FKFlickrPhotosSuggestionsRejectSuggestion : NSObject <FKFlickrAPIMethod>

/* The unique ID of the suggestion to reject. */
@property (nonatomic, strong) NSString *suggestion_id; /* (Required) */


@end