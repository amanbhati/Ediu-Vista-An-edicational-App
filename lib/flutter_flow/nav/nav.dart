import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomePageWidget() : Onboarding2Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? HomePageWidget()
              : Onboarding2Widget(),
          routes: [
            FFRoute(
              name: 'Get_Started',
              path: 'getStarted',
              builder: (context, params) => GetStartedWidget(),
            ),
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'Login',
              path: 'login',
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: 'SignUp',
              path: 'signUp',
              builder: (context, params) => SignUpWidget(),
            ),
            FFRoute(
              name: 'webdevelopemnt_des',
              path: 'webdevelopemntDes',
              builder: (context, params) => WebdevelopemntDesWidget(),
            ),
            FFRoute(
              name: 'appdevelopment_des',
              path: 'appdevelopmentDes',
              builder: (context, params) => AppdevelopmentDesWidget(),
            ),
            FFRoute(
              name: 'UIUX_des',
              path: 'uIUXDes',
              builder: (context, params) => UIUXDesWidget(),
            ),
            FFRoute(
              name: 'Internship_homepage',
              path: 'internshipHomepage',
              builder: (context, params) => InternshipHomepageWidget(),
            ),
            FFRoute(
              name: 'Courses',
              path: 'courses',
              builder: (context, params) => CoursesWidget(),
            ),
            FFRoute(
              name: 'Roadmap_web',
              path: 'roadmapWeb',
              builder: (context, params) => RoadmapWebWidget(),
            ),
            FFRoute(
              name: 'WebDev_Video',
              path: 'webDevVideo',
              builder: (context, params) => WebDevVideoWidget(),
            ),
            FFRoute(
              name: 'AppDev_Video',
              path: 'appDevVideo',
              builder: (context, params) => AppDevVideoWidget(),
            ),
            FFRoute(
              name: 'AppDev_CrashCourse',
              path: 'appDevCrashCourse',
              builder: (context, params) => AppDevCrashCourseWidget(),
            ),
            FFRoute(
              name: 'WebDev_CrashCourse',
              path: 'webDevCrashCourse',
              builder: (context, params) => WebDevCrashCourseWidget(),
            ),
            FFRoute(
              name: 'Figma_CrashCourse',
              path: 'figmaCrashCourse',
              builder: (context, params) => FigmaCrashCourseWidget(),
            ),
            FFRoute(
              name: 'Flutter_CrashCourse',
              path: 'flutterCrashCourse',
              builder: (context, params) => FlutterCrashCourseWidget(),
            ),
            FFRoute(
              name: 'AppDev_Video1',
              path: 'appDevVideo1',
              builder: (context, params) => AppDevVideo1Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video2',
              path: 'appDevVideo2',
              builder: (context, params) => AppDevVideo2Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video3',
              path: 'appDevVideo3',
              builder: (context, params) => AppDevVideo3Widget(),
            ),
            FFRoute(
              name: 'Settings',
              path: 'settings',
              builder: (context, params) => SettingsWidget(),
            ),
            FFRoute(
              name: 'WebDevVideo_1',
              path: 'webDevVideo1',
              builder: (context, params) => WebDevVideo1Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_2',
              path: 'webDevVideo2',
              builder: (context, params) => WebDevVideo2Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_3',
              path: 'webDevVideo3',
              builder: (context, params) => WebDevVideo3Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_4',
              path: 'webDevVideo4',
              builder: (context, params) => WebDevVideo4Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_5',
              path: 'webDevVideo5',
              builder: (context, params) => WebDevVideo5Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_6',
              path: 'webDevVideo6',
              builder: (context, params) => WebDevVideo6Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_7',
              path: 'webDevVideo7',
              builder: (context, params) => WebDevVideo7Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_8',
              path: 'webDevVideo8',
              builder: (context, params) => WebDevVideo8Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_9',
              path: 'webDevVideo9',
              builder: (context, params) => WebDevVideo9Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_10',
              path: 'webDevVideo10',
              builder: (context, params) => WebDevVideo10Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_11',
              path: 'webDevVideo11',
              builder: (context, params) => WebDevVideo11Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_12',
              path: 'webDevVideo12',
              builder: (context, params) => WebDevVideo12Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_13',
              path: 'webDevVideo13',
              builder: (context, params) => WebDevVideo13Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_14',
              path: 'webDevVideo14',
              builder: (context, params) => WebDevVideo14Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_15',
              path: 'webDevVideo15',
              builder: (context, params) => WebDevVideo15Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_16',
              path: 'webDevVideo16',
              builder: (context, params) => WebDevVideo16Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_17',
              path: 'webDevVideo17',
              builder: (context, params) => WebDevVideo17Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_18',
              path: 'webDevVideo18',
              builder: (context, params) => WebDevVideo18Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_19',
              path: 'webDevVideo19',
              builder: (context, params) => WebDevVideo19Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_20',
              path: 'webDevVideo20',
              builder: (context, params) => WebDevVideo20Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_21',
              path: 'webDevVideo21',
              builder: (context, params) => WebDevVideo21Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_22',
              path: 'webDevVideo22',
              builder: (context, params) => WebDevVideo22Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_23',
              path: 'webDevVideo23',
              builder: (context, params) => WebDevVideo23Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_24',
              path: 'webDevVideo24',
              builder: (context, params) => WebDevVideo24Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_25',
              path: 'webDevVideo25',
              builder: (context, params) => WebDevVideo25Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_26',
              path: 'webDevVideo26',
              builder: (context, params) => WebDevVideo26Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_27',
              path: 'webDevVideo27',
              builder: (context, params) => WebDevVideo27Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_28',
              path: 'webDevVideo28',
              builder: (context, params) => WebDevVideo28Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_29',
              path: 'webDevVideo29',
              builder: (context, params) => WebDevVideo29Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_30',
              path: 'webDevVideo30',
              builder: (context, params) => WebDevVideo30Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_31',
              path: 'webDevVideo31',
              builder: (context, params) => WebDevVideo31Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_32',
              path: 'webDevVideo32',
              builder: (context, params) => WebDevVideo32Widget(),
            ),
            FFRoute(
              name: 'WebDevVideo_33',
              path: 'webDevVideo33',
              builder: (context, params) => WebDevVideo33Widget(),
            ),
            FFRoute(
              name: 'All_Internship',
              path: 'allInternship',
              builder: (context, params) => AllInternshipWidget(),
            ),
            FFRoute(
              name: 'Hackathon',
              path: 'hackathon',
              builder: (context, params) => HackathonWidget(),
            ),
            FFRoute(
              name: 'paidinternship',
              path: 'paidinternship',
              builder: (context, params) => PaidinternshipWidget(),
            ),
            FFRoute(
              name: 'virtual_internship',
              path: 'virtualInternship',
              builder: (context, params) => VirtualInternshipWidget(),
            ),
            FFRoute(
              name: 'Certificate_internship',
              path: 'certificateInternship',
              builder: (context, params) => CertificateInternshipWidget(),
            ),
            FFRoute(
              name: 'Parttime_Internship',
              path: 'parttimeInternship',
              builder: (context, params) => ParttimeInternshipWidget(),
            ),
            FFRoute(
              name: 'Notes',
              path: 'notes',
              builder: (context, params) => NotesWidget(),
            ),
            FFRoute(
              name: 'addnotes',
              path: 'addnotes',
              builder: (context, params) => AddnotesWidget(),
            ),
            FFRoute(
              name: 'Chatroom',
              path: 'chatroom',
              builder: (context, params) => ChatroomWidget(),
            ),
            FFRoute(
              name: 'Notification',
              path: 'notification',
              builder: (context, params) => NotificationWidget(),
            ),
            FFRoute(
              name: 'AppDev_Video4',
              path: 'appDevVideo4',
              builder: (context, params) => AppDevVideo4Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video5',
              path: 'appDevVideo5',
              builder: (context, params) => AppDevVideo5Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video6',
              path: 'appDevVideo6',
              builder: (context, params) => AppDevVideo6Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video7',
              path: 'appDevVideo7',
              builder: (context, params) => AppDevVideo7Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video8',
              path: 'appDevVideo8',
              builder: (context, params) => AppDevVideo8Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video9',
              path: 'appDevVideo9',
              builder: (context, params) => AppDevVideo9Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video10',
              path: 'appDevVideo10',
              builder: (context, params) => AppDevVideo10Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video11',
              path: 'appDevVideo11',
              builder: (context, params) => AppDevVideo11Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video12',
              path: 'appDevVideo12',
              builder: (context, params) => AppDevVideo12Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video13',
              path: 'appDevVideo13',
              builder: (context, params) => AppDevVideo13Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video14',
              path: 'appDevVideo14',
              builder: (context, params) => AppDevVideo14Widget(),
            ),
            FFRoute(
              name: 'AppDev_Video15',
              path: 'appDevVideo15',
              builder: (context, params) => AppDevVideo15Widget(),
            ),
            FFRoute(
              name: 'javaDes',
              path: 'javaDes',
              builder: (context, params) => JavaDesWidget(),
            ),
            FFRoute(
              name: 'JavaVideo1',
              path: 'javaVideo1',
              builder: (context, params) => JavaVideo1Widget(),
            ),
            FFRoute(
              name: 'AboutUs',
              path: 'aboutUs',
              builder: (context, params) => AboutUsWidget(),
            ),
            FFRoute(
              name: 'TC',
              path: 'tc',
              builder: (context, params) => TcWidget(),
            ),
            FFRoute(
              name: 'Onboarding2',
              path: 'onboarding2',
              builder: (context, params) => Onboarding2Widget(),
            ),
            FFRoute(
              name: 'TCCopy',
              path: 'tCCopy',
              builder: (context, params) => TCCopyWidget(),
            ),
            FFRoute(
              name: 'Roadmap',
              path: 'roadmap',
              builder: (context, params) => RoadmapWidget(),
            ),
            FFRoute(
              name: 'Web_Development_Roadmap',
              path: 'webDevelopmentRoadmap',
              builder: (context, params) => WebDevelopmentRoadmapWidget(),
            ),
            FFRoute(
              name: 'FrontEnd_Development',
              path: 'frontEndDevelopment',
              builder: (context, params) => FrontEndDevelopmentWidget(),
            ),
            FFRoute(
              name: 'Backend_development',
              path: 'backendDevelopment',
              builder: (context, params) => BackendDevelopmentWidget(),
            ),
            FFRoute(
              name: 'Version_Control',
              path: 'versionControl',
              builder: (context, params) => VersionControlWidget(),
            ),
            FFRoute(
              name: 'App_Development_Roadmap',
              path: 'appDevelopmentRoadmap',
              builder: (context, params) => AppDevelopmentRoadmapWidget(),
            ),
            FFRoute(
              name: 'UIUX_Roadmap',
              path: 'uIUXRoadmap',
              builder: (context, params) => UIUXRoadmapWidget(),
            ),
            FFRoute(
              name: 'UI',
              path: 'ui',
              builder: (context, params) => UiWidget(),
            ),
            FFRoute(
              name: 'UX',
              path: 'ux',
              builder: (context, params) => UxWidget(),
            ),
            FFRoute(
              name: 'Flutter',
              path: 'flutter',
              builder: (context, params) => FlutterWidget(),
            ),
            FFRoute(
              name: 'SignIn',
              path: 'signIn',
              builder: (context, params) => SignInWidget(),
            ),
            FFRoute(
              name: 'SignInCopy',
              path: 'signInCopy',
              builder: (context, params) => SignInCopyWidget(),
            ),
            FFRoute(
              name: 'JavaVideo2',
              path: 'javaVideo2',
              builder: (context, params) => JavaVideo2Widget(),
            ),
            FFRoute(
              name: 'JavaVideo3',
              path: 'javaVideo3',
              builder: (context, params) => JavaVideo3Widget(),
            ),
            FFRoute(
              name: 'JavaVideo4',
              path: 'javaVideo4',
              builder: (context, params) => JavaVideo4Widget(),
            ),
            FFRoute(
              name: 'JavaVideo5',
              path: 'javaVideo5',
              builder: (context, params) => JavaVideo5Widget(),
            ),
            FFRoute(
              name: 'JavaVideo6',
              path: 'javaVideo6',
              builder: (context, params) => JavaVideo6Widget(),
            ),
            FFRoute(
              name: 'JavaVideo7',
              path: 'javaVideo7',
              builder: (context, params) => JavaVideo7Widget(),
            ),
            FFRoute(
              name: 'JavaVideo8',
              path: 'javaVideo8',
              builder: (context, params) => JavaVideo8Widget(),
            ),
            FFRoute(
              name: 'JavaVideo9',
              path: 'javaVideo9',
              builder: (context, params) => JavaVideo9Widget(),
            ),
            FFRoute(
              name: 'JavaVideo10',
              path: 'javaVideo10',
              builder: (context, params) => JavaVideo10Widget(),
            ),
            FFRoute(
              name: 'JavaVideo11',
              path: 'javaVideo11',
              builder: (context, params) => JavaVideo11Widget(),
            ),
            FFRoute(
              name: 'JavaVideo12',
              path: 'javaVideo12',
              builder: (context, params) => JavaVideo12Widget(),
            ),
            FFRoute(
              name: 'JavaVideo13',
              path: 'javaVideo13',
              builder: (context, params) => JavaVideo13Widget(),
            ),
            FFRoute(
              name: 'JavaVideo14',
              path: 'javaVideo14',
              builder: (context, params) => JavaVideo14Widget(),
            ),
            FFRoute(
              name: 'JavaVideo15',
              path: 'javaVideo15',
              builder: (context, params) => JavaVideo15Widget(),
            ),
            FFRoute(
              name: 'JavaVideo16',
              path: 'javaVideo16',
              builder: (context, params) => JavaVideo16Widget(),
            ),
            FFRoute(
              name: 'JavaVideo17',
              path: 'javaVideo17',
              builder: (context, params) => JavaVideo17Widget(),
            ),
            FFRoute(
              name: 'JavaVideo18',
              path: 'javaVideo18',
              builder: (context, params) => JavaVideo18Widget(),
            ),
            FFRoute(
              name: 'JavaVideo19',
              path: 'javaVideo19',
              builder: (context, params) => JavaVideo19Widget(),
            ),
            FFRoute(
              name: 'JavaVideo20',
              path: 'javaVideo20',
              builder: (context, params) => JavaVideo20Widget(),
            ),
            FFRoute(
              name: 'JavaVideo21',
              path: 'javaVideo21',
              builder: (context, params) => JavaVideo21Widget(),
            ),
            FFRoute(
              name: 'JavaVideo22',
              path: 'javaVideo22',
              builder: (context, params) => JavaVideo22Widget(),
            ),
            FFRoute(
              name: 'JavaVideo23',
              path: 'javaVideo23',
              builder: (context, params) => JavaVideo23Widget(),
            ),
            FFRoute(
              name: 'JavaVideo24',
              path: 'javaVideo24',
              builder: (context, params) => JavaVideo24Widget(),
            ),
            FFRoute(
              name: 'JavaVideo25',
              path: 'javaVideo25',
              builder: (context, params) => JavaVideo25Widget(),
            ),
            FFRoute(
              name: 'JavaVideo26',
              path: 'javaVideo26',
              builder: (context, params) => JavaVideo26Widget(),
            ),
            FFRoute(
              name: 'JavaVideo27',
              path: 'javaVideo27',
              builder: (context, params) => JavaVideo27Widget(),
            ),
            FFRoute(
              name: 'JavaVideo28',
              path: 'javaVideo28',
              builder: (context, params) => JavaVideo28Widget(),
            ),
            FFRoute(
              name: 'JavaVideo29',
              path: 'javaVideo29',
              builder: (context, params) => JavaVideo29Widget(),
            ),
            FFRoute(
              name: 'JavaVideo30',
              path: 'javaVideo30',
              builder: (context, params) => JavaVideo30Widget(),
            ),
            FFRoute(
              name: 'ForgotPassword',
              path: 'forgotPassword',
              builder: (context, params) => ForgotPasswordWidget(),
            ),
            FFRoute(
              name: 'Profile_Page',
              path: 'profilePage',
              builder: (context, params) => ProfilePageWidget(),
            ),
            FFRoute(
              name: 'SettingsCopy',
              path: 'settingsCopy',
              builder: (context, params) => SettingsCopyWidget(),
            ),
            FFRoute(
              name: 'Cplus_des',
              path: 'cplusDes',
              builder: (context, params) => CplusDesWidget(),
            ),
            FFRoute(
              name: 'cplus_vid1',
              path: 'cplusVid1',
              builder: (context, params) => CplusVid1Widget(),
            ),
            FFRoute(
              name: 'Online_hackathon',
              path: 'onlineHackathon',
              builder: (context, params) => OnlineHackathonWidget(),
            ),
            FFRoute(
              name: 'offline_hackathons',
              path: 'offlineHackathons',
              builder: (context, params) => OfflineHackathonsWidget(),
            ),
            FFRoute(
              name: 'Challenges',
              path: 'challenges',
              builder: (context, params) => ChallengesWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (GoRouter.of(this).routerDelegate.matches.length <= 1) {
      go('/');
    } else {
      pop();
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/onboarding2';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
