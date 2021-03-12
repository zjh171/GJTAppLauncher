//
//  GJTRuleSyncChain+RuleSyncAtom.m
//  GJTAppLauncher
//
//  Created by kyson on 2021/3/6.
//

#import "GJTRuleSyncChain+RuleSyncAtom.h"
#import "GJTToolMan.h"
#import "GJTToolMan.h"


@implementation GJTRuleSyncChain(RuleSyncAtom)

@dynamic atomsChainHeads;
@dynamic atomsChainTails;


-(GJTToolMan *) generateSyncChainWithAtoms:(NSArray *) syncAtoms handleAtomBlock:(GJTToolManHandleBlock) atomHandleBlock{
    GJTToolMan *syncAtomHeader = nil;
    GJTToolMan *endAtom = nil;
    
    for (NSDictionary *atomDictItem in syncAtoms) {
        GJTToolMan *syncAtom = nil;
        if ([atomDictItem isKindOfClass:NSDictionary.class]) {
            syncAtom = [[GJTToolMan alloc] initWithParams:atomDictItem];
        } else if([atomDictItem isKindOfClass:GJTToolMan.class]) {
            syncAtom = (GJTToolMan *)atomDictItem;
        } else {
            NSAssert(0, @"class type is invalid");
        }
        
        syncAtom.handleBlock = atomHandleBlock;
        
        //组成链表
        if (syncAtom) {
            if (nil == syncAtomHeader) {
                syncAtomHeader = syncAtom;
            } else {
                endAtom.next = syncAtom;
            }
            endAtom = syncAtom;
        }
                
    }
    
    if (syncAtoms.count > 0) {
        endAtom.next = nil;
    }
    
    return syncAtomHeader;
}



-(void) runSyncHeadsAtom {
    if (nil == self.atomsChainHeads) {
        return;
    }
    
    @try {
        if (self.atomsChainHeads.handleBlock) {
            GJTToolMan *handleAtom = self.atomsChainHeads;

            NSException *exception = nil;
            exception = self.atomsChainHeads.handleBlock(handleAtom);
            
            //处理链表
            GJTToolMan *currentAtom = self.atomsChainHeads;
            self.atomsChainHeads = self.atomsChainHeads.next;
            currentAtom.next = nil;
            currentAtom.handleBlock = nil;
         
            [self runSyncHeadsAtom];
        }
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
    
}

-(void) runSyncTailAtom {
    if (nil == self.atomsChainTails) {
        return;
    }
    
    @try {
        if (self.atomsChainTails.handleBlock) {
            GJTToolMan *handleAtom = self.atomsChainTails;
            NSException *exception = nil;
            exception = self.atomsChainTails.handleBlock(handleAtom);
            
            //处理链表
            GJTToolMan *currentAtom = self.atomsChainTails;
            self.atomsChainTails = self.atomsChainTails.next;
            currentAtom.next = nil;
            currentAtom.handleBlock = nil;
//            currentAtom.resultBlock = nil;
        }
    } @catch (NSException *exception) {
        
    } @finally {
        
    }
    
}


@end
