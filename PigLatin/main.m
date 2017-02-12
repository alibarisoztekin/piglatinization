//
//  main.m
//  PigLatin
//
//  Created by Ali Barış Öztekin on 2017-02-11.
//  Copyright © 2017 Ali Barış Öztekin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString* testString =@"this is a sentence that should work";
        NSString* latinizedTest = [testString stringByPigLatinization];
        
        NSLog(@"%@",latinizedTest);
    }
    return 0;
}
