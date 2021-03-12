//
//  GJTRuleSyncAtom.m
//  AFNetworking
//
//  Created by kyson on 2021/3/6.
//

#import "GJTToolMan.h"
#import "GJTAppLauncherAnnotation.h"

@implementation GJTToolMan


-(instancetype)initWithParams:(NSDictionary *) params {
    if (params.count <= 0) {
        return nil;
    }
    
    self = [super init];
    if (self) {
        _selName = params[GJTSelKey];
        _className = params[GJTClsNameKey];
    }
    return self;
}



@end
