//
//  NSMutableArray+DMCore.m
//  DMCore
//
//  Created by Dale Myers on 26/04/2015.
//  Copyright (c) 2015 Dale Myers. All rights reserved.
//

#import "NSMutableArray+DMCore.h"

@implementation NSMutableArray (DMCore)

- (void)dm_ShuffleInPlace
{
    for(int i = 0; i < [self count]; i++)
    {
        int new_index = arc4random_uniform((int)[self count]);
        [self exchangeObjectAtIndex:i withObjectAtIndex:new_index];
    }
}

- (void)dm_ReverseInPlace
{
    for(int i = 0; i < [self count]/2; i++)
    {
        NSInteger alt_index = [self count] - i - 1;
        [self exchangeObjectAtIndex:i withObjectAtIndex:alt_index];
    }
}

- (void)dm_RemoveDuplicatesInPlace
{
    NSInteger i = 0;
    while(i < [self count] - 1)
    {
        id obj = self[i];
        NSInteger j = i + 1;
        while(j < [self count])
        {
            if(obj == self[j])
            {
                [self removeObjectAtIndex:j];
            }
            else
            {
                j++;
            }
        }
        i++;
    }
}

@end
