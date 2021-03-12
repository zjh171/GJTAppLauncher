#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GJTAppLauncherAnnotation.h"
#import "GJTRuleSyncChain+RuleSyncAtom.h"
#import "GJTRuleSyncChain.h"
#import "GJTRuleSyncChainMacro.h"
#import "GJTToolMan.h"
#import "GJTAppLauncher.h"
#import "GJTAppHPLauncher.h"
#import "GJTAppLauncherItems.h"

FOUNDATION_EXPORT double GJTAppLauncherVersionNumber;
FOUNDATION_EXPORT const unsigned char GJTAppLauncherVersionString[];

