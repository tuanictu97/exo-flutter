#import "ExoflutterPlugin.h"
#if __has_include(<exoflutter/exoflutter-Swift.h>)
#import <exoflutter/exoflutter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "exoflutter-Swift.h"
#endif

@implementation ExoflutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftExoflutterPlugin registerWithRegistrar:registrar];
}
@end
