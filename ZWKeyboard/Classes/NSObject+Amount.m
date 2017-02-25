//
//  NSString+Amount.m
//  GoodInCome
//
//  Created by zhenwei cui on 2016/10/21.
//  Copyright © 2016年 iamsup. All rights reserved.
//

#import "NSObject+Amount.h"

@implementation NSObject (Amount)
- (NSString *)handleAmount:(NSString *)handleAmount
{
    if([handleAmount isEqualToString:@"<null>"]||[handleAmount isEqualToString:@"(null)"]||handleAmount ==nil )
    {
        handleAmount = @"0";
    }
    NSString *dianStr = @"";
    NSMutableString *curStr = [NSMutableString stringWithString:handleAmount];
    if ([curStr rangeOfString:@"."].location != NSNotFound)
    {
        
        dianStr = [curStr substringFromIndex:[curStr rangeOfString:@"."].location];
        handleAmount = [curStr substringToIndex:[curStr rangeOfString:@"."].location];
    }
    
    int count = 0;
    long long int a = handleAmount.longLongValue;
    while (a != 0)
    {
        count++;
        a /= 10;
    }
    NSMutableString *string = [NSMutableString stringWithString:handleAmount];
    NSMutableString *newstring = [NSMutableString string];
    while (count > 3) {
        count -= 3;
        NSRange rang = NSMakeRange(string.length - 3, 3);
        NSString *str = [string substringWithRange:rang];
        [newstring insertString:str atIndex:0];
        [newstring insertString:@"," atIndex:0];
        [string deleteCharactersInRange:rang];
    }
    [newstring insertString:string atIndex:0];
    if (dianStr.length>=1) {
        if (dianStr.length==2) {
            NSMutableString *str = [NSMutableString string];
            [str insertString:dianStr atIndex:0];
            [str appendString:@"0"];
            dianStr = str;
        }else if (dianStr.length>3)
        {
            dianStr = [dianStr substringToIndex:3];
        }
        [newstring appendString:dianStr];
    }else{
        [newstring appendString:@".00"];
    }
    
    return newstring;
}
@end
