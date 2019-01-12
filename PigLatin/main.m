//
//  main.m
//  PigLatin
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+stringByPigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"bcdhello from earth";
        NSLog(@"%@", [string stringByPigLatinization]);
        
        
   
        
        
        
    }
    return 0;
}
