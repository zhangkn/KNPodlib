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

#import "HCPEnvrionmentalVariables.h"
#import "KNBaseViewController.h"
#import "KNBaseWebViewController.h"
#import "KNFeedbackViewController.h"
#import "KNTestWebViewController.h"

FOUNDATION_EXPORT double KNPodlibVersionNumber;
FOUNDATION_EXPORT const unsigned char KNPodlibVersionString[];

