apple_resource(
    name = 'AppResources',
    dirs = [],
    files = glob(['TestBuck/Base.lproj/*.xib','TestBuck/Base.lproj/*.storyboard']),
)

apple_asset_catalog(
  name = 'AppAsset',
  dirs = ['TestBuck/Assets.xcassets'],
  app_icon = 'AppIcon',
)

apple_binary(
  name = 'TestBuckAppBinary',
  deps = [':AppResources', ':AppAsset'],
  preprocessor_flags = ['-fobjc-arc'],
  headers = glob([
    'TestBuck/*.h',
  ]),
  srcs = glob([
    'TestBuck/*.m',
  ]),
  frameworks = [
    '$SDKROOT/System/Library/Frameworks/UIKit.framework',
    '$SDKROOT/System/Library/Frameworks/Foundation.framework',
  ],
)

apple_bundle(
    name = 'TestBuck',
    binary = ':TestBuckAppBinary',
    tests = [':AppTest'],
    extension = 'app',
    info_plist = 'TestBuck/Info.plist',
    info_plist_substitutions = {
        'PRODUCT_BUNDLE_IDENTIFIER': 'com.sph.TestBuck',
        'CURRENT_PROJECT_VERSION': '1',
    },
)

apple_package(
  name = 'TestBuckPackage',
  bundle = ':TestBuck',
)
