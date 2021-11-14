#import "FlutterRootJailbreakPlugin.h"
#if __has_include(<flutter_root_jailbreak/flutter_root_jailbreak-Swift.h>)
#import <flutter_root_jailbreak/flutter_root_jailbreak-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_root_jailbreak-Swift.h"
#endif

@implementation FlutterRootJailbreakPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterRootJailbreakPlugin registerWithRegistrar:registrar];
}
@end
