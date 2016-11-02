// Generated by Apple Swift version 3.0 (swiftlang-800.0.46.2 clang-800.0.38)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import ObjectiveC;
@import Foundation;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;

SWIFT_CLASS("_TtC10VIPER_Demo11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class CountriesWireframe;

SWIFT_CLASS("_TtC10VIPER_Demo15AppDependencies")
@interface AppDependencies : NSObject
@property (nonatomic, strong) CountriesWireframe * _Null_unspecified countriesWireframe;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (void)installRootViewControllerInWindowWithWindow:(UIWindow * _Nonnull)window;
- (void)configureDependencies;
@end

@class NSError;
@class UIWebView;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC10VIPER_Demo28CollegeDetailsViewController")
@interface CollegeDetailsViewController : UIViewController
/**
  UI
*/
@property (nonatomic, weak) IBOutlet UIWebView * _Null_unspecified webView;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)showErrorWithError:(NSError * _Nonnull)error;
- (void)showCollegeDetailsWithUrl:(NSURL * _Nonnull)url;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC10VIPER_Demo23CollegeDetailsWireframe")
@interface CollegeDetailsWireframe : NSObject
/**
  ViewController - weak
*/
@property (nonatomic, weak) CollegeDetailsViewController * _Null_unspecified collegeDetailsViewController;
/**
  Next wireframe, if exist
*/
@property (nonatomic, strong) NSObject * _Null_unspecified nextWireframe;
- (void)pushCollegeDetailsFromViewController:(UIViewController * _Nonnull)viewController;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class NSArray;
@class UITableView;
@class UIView;
@class UIActivityIndicatorView;

SWIFT_CLASS("_TtC10VIPER_Demo22CollegesViewController")
@interface CollegesViewController : UIViewController
@property (nonatomic, weak) IBOutlet UITableView * _Null_unspecified collegesTableView;
@property (nonatomic, weak) IBOutlet UIView * _Null_unspecified errorView;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView * _Null_unspecified activityIndicator;
/**
  Data source
*/
@property (nonatomic, strong) NSArray * _Null_unspecified colleges;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)viewWillAppear:(BOOL)animated;
- (void)showNoCollegesFound;
- (void)showCollegesWithColleges:(NSArray * _Nonnull)colleges;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


@interface CollegesViewController (SWIFT_EXTENSION(VIPER_Demo)) <UITableViewDelegate, UIScrollViewDelegate>
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
@end

@class UITableViewCell;

@interface CollegesViewController (SWIFT_EXTENSION(VIPER_Demo)) <UITableViewDataSource>
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section;
@end


SWIFT_CLASS("_TtC10VIPER_Demo17CollegesWireframe")
@interface CollegesWireframe : NSObject
@property (nonatomic, strong) CollegesViewController * _Null_unspecified collegesViewController;
/**
  Next wireframe
*/
@property (nonatomic, strong) CollegeDetailsWireframe * _Null_unspecified collegeDetailsWireframe;
- (void)pushCollegesViewFromViewController:(UIViewController * _Nonnull)viewController;
- (void)showCollegeDetailsWithCollegeWebsiteURL:(NSURL * _Nonnull)url;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC10VIPER_Demo23CountriesViewController")
@interface CountriesViewController : UIViewController
/**
  Datasource
*/
@property (nonatomic, strong) NSArray * _Null_unspecified countries;
/**
  UI
*/
@property (nonatomic, weak) IBOutlet UIView * _Null_unspecified errorView;
@property (nonatomic, weak) IBOutlet UITableView * _Null_unspecified countriesTableView;
- (void)viewDidLoad;
- (void)viewDidAppear:(BOOL)animated;
- (void)viewWillAppear:(BOOL)animated;
- (void)didReceiveMemoryWarning;
- (void)showNoCountriesFound;
- (void)showCountriesWithCountries:(NSArray * _Nonnull)countries;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


@interface CountriesViewController (SWIFT_EXTENSION(VIPER_Demo)) <UITableViewDelegate, UIScrollViewDelegate>
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
@end


@interface CountriesViewController (SWIFT_EXTENSION(VIPER_Demo)) <UITableViewDataSource>
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section;
@end

@class RootWireframe;

SWIFT_CLASS("_TtC10VIPER_Demo18CountriesWireframe")
@interface CountriesWireframe : NSObject
/**
  ViewController
*/
@property (nonatomic, strong) CountriesViewController * _Null_unspecified countriesViewController;
/**
  Rootwireframe, since this is first view controller’s wireframe
*/
@property (nonatomic, strong) RootWireframe * _Null_unspecified rootWireframe;
/**
  Next wireframe
*/
@property (nonatomic, strong) CollegesWireframe * _Null_unspecified collegesWireframe;
- (void)addListInterfaceInWindowWithWindow:(UIWindow * _Nonnull)window;
- (void)showCollegesInCountryWithCountry:(NSString * _Nonnull)country;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC10VIPER_Demo13RootWireframe")
@interface RootWireframe : NSObject
- (void)showRootViewControllerWithViewController:(UIViewController * _Nonnull)viewController inWindow:(UIWindow * _Nonnull)inWindow;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop
