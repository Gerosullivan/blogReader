//
//  THBlogPost.m
//  BlogReader
//
//  Created by Ger O'Sullivan on 18/08/2014.
//  Copyright (c) 2014 Ger O'Sullivan. All rights reserved.
//

#import "THBlogPost.h"
#import "NSDate+TimeAgo.h"


@implementation THBlogPost

- (id) initWithTitle:(NSString *)title {
    self = [super init];
    
    if(self) {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
        
    }
    return self;
}

+(id) blogPostWithTitle:(NSString *)title {
    return [[self alloc] initWithTitle:title];
}

- (NSURL *) thumbnailURL {
//    NSLog(@"%@", [self.thumbnail class]);
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *) formattedDate {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *tempDate = [dateFormatter dateFromString:self.date];
    
//    [dateFormatter setDateFormat:@"EE MMM,dd"];
    NSString *ago = [tempDate timeAgo];
    return ago;
}

@end
