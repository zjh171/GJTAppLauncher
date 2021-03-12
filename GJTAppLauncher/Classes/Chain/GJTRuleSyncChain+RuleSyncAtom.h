//
//  GJTRuleSyncChain+RuleSyncAtom.h
//  GJTAppLauncher
//
//  Created by kyson on 2021/3/6.
//

#import <Foundation/Foundation.h>
#import "GJTRuleSyncChain.h"
#import "GJTToolMan.h"

NS_ASSUME_NONNULL_BEGIN

@interface GJTRuleSyncChain(RuleSyncAtom)

@property (nonatomic, strong) GJTToolMan *atomsChainHeads;

@property (nonatomic, strong) GJTToolMan *atomsChainTails;


-(GJTToolMan *) generateSyncChainWithAtoms:(NSArray *) syncAtoms handleAtomBlock:(GJTToolManHandleBlock) atomHandleBlock;



-(void) runSyncHeadsAtom ;

-(void) runSyncTailAtom ;

@end

NS_ASSUME_NONNULL_END
