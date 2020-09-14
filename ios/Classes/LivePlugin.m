#import "LivePlugin.h"
#if __has_include(<livePlugin/livePlugin-Swift.h>)
#import <livePlugin/livePlugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "livePlugin-Swift.h"
#endif

@implementation LivePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLivePlugin registerWithRegistrar:registrar];
}
@end
