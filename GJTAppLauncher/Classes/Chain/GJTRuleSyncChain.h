//
//  GJTRuleSyncChain.h
//  AFNetworking
//
//  Created by kyson on 2021/3/6.
//

#import <Foundation/Foundation.h>
#import "GJTToolMan.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJTRuleSyncChain : NSObject

+(instancetype) syncChainWithChainHeaders:(NSArray *) headeAtoms chainTails:(NSArray *) tailAtoms handleAtomBlock:(GJTToolManHandleBlock) handleBlock;

@end

NS_ASSUME_NONNULL_END
