//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Ali Barış Öztekin on 2017-02-11.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import "NSString+PigLatinization.h"

@implementation NSString (PigLatinization)

-(NSString*) stringByPigLatinization
{
    NSArray* tokenArray = [self componentsSeparatedByString:@" "];
    NSMutableArray* latinizedArray = [[NSMutableArray alloc] init];
    
    NSString* vowelsString = @"aeiouy";
    NSCharacterSet* vowelSet = [NSCharacterSet characterSetWithCharactersInString:vowelsString];
    
    
    for (NSString* token in tokenArray)
    {
        
        
        NSArray* seperatedToken = [token componentsSeparatedByCharactersInSet:vowelSet];
        NSString* firstBlock = [seperatedToken objectAtIndex:0];
        NSString* newFirstBlock = [token substringFromIndex:firstBlock.length];
        
        if ([firstBlock isEqualToString:@""])
        {
            NSString* newVowelToken = [token stringByAppendingString:@"way"];
            [latinizedArray addObject:newVowelToken];
        }
        else
        {
            NSArray* newTokenComponents = @[newFirstBlock,firstBlock,@"ay"];
            NSString* newToken = [newTokenComponents componentsJoinedByString:@""];
            [latinizedArray addObject:newToken];

        }
    }
    NSString* latinizedString = [latinizedArray componentsJoinedByString:@" "];
    return latinizedString;
}

@end
