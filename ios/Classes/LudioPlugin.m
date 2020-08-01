#import "LudioPlugin.h"
#if __has_include(<ludio/ludio-Swift.h>)
#import <ludio/ludio-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ludio-Swift.h"
#endif

@implementation LudioPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLudioPlugin registerWithRegistrar:registrar];
}
@end
