//
//  Timeline.h
//  LoginWithViper
//
//  Created by SRIN SAMSUNG on 2/19/16.
//  Copyright © 2016 SRIN SAMSUNG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Timeline : NSObject
{
    NSString  *name;
    NSString *content;
}

-(NSString *)getName;
-(void)setName:(NSString *)string;
-(NSString *)getContent;
-(void)setContent:(NSString *)string;

@end
