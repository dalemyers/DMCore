//
//  NSURL+HotCocoa.h
//  HotCocoa
//
//  Created by Dale Myers on 25/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (HotCocoa)

/**
 *	@brief  Converts and returns the query parameters as a dictionary
 *
 *	@return The query parameters as a dictionary
 */
- (NSDictionary*)queryParametersDictionary;

/**
 *	@brief  Gets a query parameter from the URL by name
 *
 *	@param name The name of the query parameter to fetch
 *
 *	@return The query parameter with the supplied name
 */
- (NSString*)queryParameterByName:(NSString*)name;

@end