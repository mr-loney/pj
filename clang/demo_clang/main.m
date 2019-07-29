#import <Foundation/Foundation.h>
#import "a.h"
#import "b.h"
#define DEFINEEight 8

int main(){
    @autoreleasepool {
        BBB *b = [BBB new];
        
        int eight = DEFINEEight;
        int six = 6;
        NSString *site = @"彭君";
        int rank = eight + six;
        NSLog(@"%@ rank %d", site, rank);
        
        NSLog(@"hello world");
    }
    return 0;
}
