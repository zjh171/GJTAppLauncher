//
//  GJTRuleSyncChain.m
//  AFNetworking
//
//  Created by kyson on 2021/3/6.
//

#import "GJTRuleSyncChain.h"
#import "GJTRuleSyncChain+RuleSyncAtom.h"


@interface GJTRuleSyncChain ()

@property (nonatomic, strong) GJTToolMan *atomsChainHeads;

@property (nonatomic, strong) GJTToolMan *atomsChainTails;

@end

@implementation GJTRuleSyncChain


+(instancetype) syncChainWithChainHeaders:(NSArray *) headeAtoms chainTails:(NSArray *) tailAtoms handleAtomBlock:(GJTToolManHandleBlock) handleBlock {
    GJTRuleSyncChain *chain = [[GJTRuleSyncChain alloc] init];
    
    
    if (headeAtoms.count > 0) {
        chain.atomsChainHeads = [chain generateSyncChainWithAtoms:headeAtoms handleAtomBlock:handleBlock];
        [chain runSyncHeadsAtom];
    }
    
    
    if (tailAtoms.count > 0) {
        chain.atomsChainTails = [chain generateSyncChainWithAtoms:tailAtoms handleAtomBlock:handleBlock];
        [chain runSyncTailAtom];
    }
    
    return chain;
}

@end
