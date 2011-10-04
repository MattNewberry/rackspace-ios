//
//  RSNSURLConnection.m
//  Rackspace
//
//  Created by Matt Newberry on 8/23/11.
//  Copyright (c) 2011 Rackspace. All rights reserved.
//

#import "RSNSURLConnection.h"
#import "RSProvider.h"

@implementation RSNSURLConnection

@synthesize account = _account;

- (BOOL) authenticate{
    
    [[CKManager sharedManager] setBaseURL:@""];
    
    CKRequest *request = [CKRequest requestWithMap:[CKRouterMap mapWithRemotePath:_account.provider.api_auth_url]];
    [request addHeaders:$D(_account.username, @"X-Auth-User", _account.api_key, @"X-Auth-Key")];
    
    NSLog(@"url: %@", _account.provider.api_auth_url);
    NSLog(@"headers: %@", [request headers]);
    
    CKResult *result = [self sendSyncronously:request];
    
    NSLog(@"response code: %i", self.responseCode);
    NSLog(@"response error: %@", [result.error description]);
    
    if (self.responseCode == 204){
        
        _account.api_auth_token = [self.responseHeaders objectForKey:@"X-Auth-Token"];
        _account.api_server_url = $S(@"%@/", [self.responseHeaders objectForKey:@"X-Server-Management-Url"]);
        _account.api_cdn_url = $S(@"%@/", [self.responseHeaders objectForKey:@"X-Cdn-Management-Url"]);
        [_account save];
        
        [[CKManager sharedManager] setBaseURL:_account.api_server_url];
        
        return YES;
    }
    
    return NO;
}

@end
