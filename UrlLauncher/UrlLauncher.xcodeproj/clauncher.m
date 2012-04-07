//
//  cbatterylife.m
//  AIRExtensionC
//
//  Created by Todd Anderson
//  Copyright 2011 custardbelly.com. All rights reserved.
//

#include "FlashRuntimeExtensions.h"

#import <UIKit/UIKit.h>


// Access info about battery
FREObject LaunchURL(FREContext ctx, void* funcData, uint32_t argc, FREObject argv[]) {
	
    
    uint32_t length = 0;
    const uint8_t *url = NULL;
    FREGetObjectAsUTF8( argv[0], &length, &url );
    
    NSString *urlS = [[NSString alloc] initWithBytes:url length:length encoding:NSUTF8StringEncoding];
    
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlS]];
    
	int info = 0;
	
	FREObject retVal;
	FRENewObjectFromInt32( info, &retVal );
    
	return retVal;
}

// A native context instance is created
void ContextInitializer(void* extData, const uint8_t* ctxType, FREContext ctx, uint32_t* numFunctionsToTest, const FRENamedFunction** functionsToSet) {
	*numFunctionsToTest = 1;
	FRENamedFunction* func = (FRENamedFunction*)malloc(sizeof(FRENamedFunction));
	func[0].name = (const uint8_t*)"LaunchURL";
	func[0].functionData = NULL;
	func[0].function = &LaunchURL;
	
	*functionsToSet = func;
}

// A native context instance is disposed
void ContextFinalizer(FREContext ctx) {
	return;
}

// Initialization function of each extension
void ExtInitializer(void** extDataToSet, FREContextInitializer* ctxInitializerToSet, FREContextFinalizer* ctxFinalizerToSet) {
	*extDataToSet = NULL;
	*ctxInitializerToSet = &ContextInitializer;
	*ctxFinalizerToSet = &ContextFinalizer;
}

// Called when extension is unloaded
void ExtFinalizer(void* extData) {
	return;
}




