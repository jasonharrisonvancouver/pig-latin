//
//  NSString+stringByPigLatinization.m
//  PigLatin
//
//  Created by jason harrison on 2019-01-11.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "NSString+stringByPigLatinization.h"







@implementation NSString (stringByPigLatinization)

/*

- (NSString *)stringByPigLatinization{
    NSString *startingString = self;
    NSMutableString *str = [[NSMutableString alloc] init];
    
    
    for(int j = 0; j < [startingString length]; j++){
        
        char oneLetter = [startingString characterAtIndex:j];
        
        if(oneLetter != ' '){
            NSString *oneLetterString = [NSString stringWithFormat:@"%c", oneLetter];
            [str appendString:oneLetterString];
        }else{
            return [self stringByPigLatinizationWork];
        }
    }
    return str;
}
    */
    

- (NSString *)stringByPigLatinization{
    
    
    //for(j = 0; j < [)
    
    
    
    NSMutableString *pigString = [[NSMutableString alloc] init];
    NSMutableString *startingConsonantString = [[NSMutableString alloc] init];
    NSString *tempString = self;
    [tempString lowercaseString];
    
    char c = [tempString characterAtIndex:0];
    
    // simply append "ay" to strings that begin with vowels
    if((c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u')){
        pigString = [[NSMutableString alloc] initWithString:self];
        [pigString appendString:@"ay"];
        return pigString;
    }
    
    NSString *oneLetterString = [NSString stringWithFormat:@"%c", c];
   // pigString = [[NSMutableString alloc] initWithString:oneLetterString];
    
    for(int i = 0; i < [tempString length] - 1; i++){
        c = [tempString characterAtIndex:i];
        
        if((c == 'a') || (c == 'e') || (c == 'i') || (c == 'o') || (c == 'u')){
            [pigString appendString:[tempString substringFromIndex:i]];
            break;
        }else{
            oneLetterString = [NSString stringWithFormat:@"%c", c];
           // [pigString appendString:oneLetterString];
            [startingConsonantString appendString:oneLetterString];
            //pigString = [[NSMutableString alloc] initWithString:oneLetterString];

        }

    }
    [pigString appendString:startingConsonantString];
    [pigString appendString:@"ay"];
    return pigString;
}


@end
