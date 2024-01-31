import 'package:expense_app/routings/routes.dart';
import 'package:expense_app/ui/authentication/otp.dart';
import 'package:expense_app/ui/home/home.dart';
import 'package:expense_app/ui/intro_screens.dart';
import 'package:expense_app/ui/authentication/login.dart';
import 'package:expense_app/ui/splash.dart';
import 'package:flutter/material.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SplashRoute:
        return _getPageRoute(const Splash(), settings);
      case Routes.IntroRoute:
        return _getPageRoute(const IntroScreen(), settings);
      case Routes.SignInRoute:
        return _getPageRoute(const Login(), settings);
      case Routes.OtpRoute:
        return _getLeftPageRoute(const OtpScreen(), settings);
      case Routes.HomeRoute:
        return _getLeftPageRoute(const Home(), settings);
      // case Routes.DashboardRoute:
      //   return _getLeftPageRoute(const Dashboard(), settings);
      // case Routes.TermAndPolicy:
      //   return _getLeftPageRoute(
      //       TermsAndPrivacyScreen(
      //         termPage: settings.arguments as bool,
      //       ),
      //       settings);
      // case Routes.ForgotPasswordRoute:
      //   return _getLeftPageRoute(ForgotPassword(), settings);
      // case Routes.OnBoardingQuestion:
      //   return _getLeftPageRoute(
      //       OnBoardingQuestion(
      //         onBoardingQuestion:
      //             settings.arguments as OnBoardingMainQuestionModel,
      //       ),
      //       settings);
      // /*case Routes.OnBoardingRole:
      //   return _getLeftPageRoute(
      //       OnBoardingJobRoleBenchMark(
      //         onBoardingQuestion: settings.arguments,
      //       ),
      //       settings);*/
      // case Routes.MoodCapture:
      //   return _getLeftPageRoute(MoodCapture(), settings);
      // case Routes.AllSkills:
      //   return _getLeftPageRoute(AllSkills(), settings);
      // case Routes.SkillLessonDetail:
      //   SkillDetailArgument args = settings.arguments as SkillDetailArgument;
      //   return _getLeftPageRoute(
      //       SkillLessonDetail(
      //           args.skillId as String, args.skillTitle as String),
      //       settings);
      // case Routes.HomeRoute:
      //   return _getPageRoute(Dashboard(), settings);
      // case Routes.MyProfileRoute:
      //   return _getRightPageRoute(MyProfile(), settings);
      // case Routes.EditProfileRoute:
      //   return _getLeftPageRoute(EditProfile(), settings);
      // case Routes.MyStateRoute:
      //   return _getLeftPageRoute(MyStats(), settings);
      // case Routes.ChallengeRoute:
      //   return _getBottomPageRoute(Challange(), settings);
      // case Routes.ChallengesRoute:
      //   return _getLeftPageRoute(Challenges(), settings);
      // case Routes.ChallengeHistory:
      //   return _getBottomPageRoute(ChallengeHistory(), settings);
      // case Routes.ChallengeSent:
      //   return _getPageRoute(ChallengeSent(), settings);
      // case Routes.SendChallengeRoute:
      //   return _getLeftPageRoute(
      //       SendChallenge(
      //         challengeModel: settings.arguments as ChallengeModel,
      //       ),
      //       settings);
      // case Routes.CPDCertificateRoute:
      //   return _getLeftPageRoute(CpdCertificate(), settings);
      // case Routes.NotesDetailsRoute:
      //   NotesArgument args = settings.arguments as NotesArgument;
      //   return _getLeftPageRoute(
      //       NotesDetails(
      //         args.noteId!,
      //         args.isStartDoing!,
      //         args.isArchive!,
      //         position: args.position!,
      //       ),
      //       settings);
      // case Routes.MyLearningDiaryRoute:
      //   bool args = settings.arguments as bool;
      //   return _getLeftPageRoute(MyLearningDiary(args), settings);
      // case Routes.MyPurchaseRoute:
      //   return _getLeftPageRoute(MyPurchase(), settings);
      // case Routes.CustomizeFocusModeRoute:
      //   return _getLeftPageRoute(CustomizeFocusMode(), settings);
      // case Routes.CreateNoteRoute:
      //   return _getLeftPageRoute(CreateNote(), settings);
      // case Routes.ContactUsRoute:
      //   return _getLeftPageRoute(ContactUs(), settings);
      // case Routes.ThankYouRoute:
      //   return _getLeftPageRoute(ThankYouScreen(), settings);
      // case Routes.MyWishListRoute:
      //   return _getLeftPageRoute(
      //       MyWishList(),
      //       settings);
      // case Routes.SkillBasedJobRole:
      //   HumanSkillModel args = settings.arguments as HumanSkillModel;
      //   return _getLeftPageRoute(SkillBasedJobRole(args), settings);
      // case Routes.JobDetailsRoute:
      //   JobDetailArgument args = settings.arguments as JobDetailArgument;
      //   return _getLeftPageRoute(JobDetail(args.id as String), settings);
      // case Routes.PaymentView:
      //   List args = settings.arguments as List;
      //   JobDetailsResponse? jobDetail;
      //   MicroPracticeModel? microPractice;
      //   if (args[0] != null) {
      //     jobDetail = args[0] as JobDetailsResponse;
      //   }
      //   if (args[1] != null) {
      //     microPractice = args[1] as MicroPracticeModel;
      //   }
      //   return _getLeftPageRoute(
      //       PaymentScreen(jobDetail: jobDetail, microPractice: microPractice),
      //       settings);
      // case Routes.PaymentSuccess:
      //   int args = settings.arguments as int;
      //   return _getPageRoute(PaymentSuccess(type: args), settings);
      // case Routes.AccountSetting:
      //   return _getLeftPageRoute(AccountSetting(), settings);
      // case Routes.ChangePassword:
      //   return _getLeftPageRoute(ChangePassword(), settings);
      // case Routes.DeleteAccountRoute:
      //   return _getLeftPageRoute(DeleteAccount(), settings);
      // case Routes.BenchmarksRoutes:
      //   return _getLeftPageRoute(BenchMarks(), settings);
      // case Routes.BenchmarksHistoryRoutes:
      //   return _getLeftPageRoute(BenchmarksHistory(), settings);
      // case Routes.SkillDetailRoute:
      //   String microPracticeId = settings.arguments as String;
      //   return _getPageRoute(SkillDetailView(microPracticeId), settings);
      // case Routes.LevelRoute:
      //   RouteArgument args = settings.arguments as RouteArgument;
      //   return _getPageRoute(
      //       LevelDetailView(args.microPracticeModel!, args.level!), settings);
      // case Routes.MyPDFViewer:
      //   RouteArgument args = settings.arguments as RouteArgument;
      //   return _getPageRoute(MyPDFViewer(args.certificateUrl!), settings);
      // case Routes.StartLessonRoute:
      //   RouteArgument args = settings.arguments as RouteArgument;
      //   return _getPageRoute(
      //       StartLessonView(
      //         args.microPracticeModel,
      //         args.level,
      //         isFrom: args.isFrom,
      //         microPracticeID: args.microPracticesId,
      //         microPracticeTitle: args.microPracticesTitle,
      //         levelId: args.levelId,
      //         lessonTitle: args.lessonTitle,
      //         lessonId: args.lessonId,
      //       ),
      //       settings);
      // case Routes.LessonQuestionsRoute:
      //   RouteArgument args = settings.arguments as RouteArgument;
      //   return _getPageRoute(
      //       LessonQuestionsView(
      //         args.microPracticeModel,
      //         args.level,
      //         lessonQuestionsResultModel: args.lessonQuestionsDetails,
      //         isFrom: args.isFrom,
      //         microPracticeID: args.microPracticesId,
      //         microPracticeTitle: args.microPracticesTitle,
      //         levelId: args.levelId,
      //         lessonTitle: args.lessonTitle,
      //         lessonId: args.lessonId,
      //       ),
      //       settings);
      // case Routes.LessonResult:
      //   RouteArgument args = settings.arguments as RouteArgument;
      //   return _getPageRoute(
      //       LessonResultView(
      //           args.getLessonRequest, args.isChallengePowerUnlocked,
      //           isFrom: args.isFrom!),
      //       settings);
      // case Routes.BenchmarkJobRoleRoute:
      //   return _getPageRoute(BenchMarkRoleView(), settings);
      // case Routes.CompleteLessonPopup:
      //   RouteArgument args = settings.arguments as RouteArgument;
      //   return _getPageRoute(
      //       CompleteLessonPopup(args.lessonResultDetailModel!), settings);
      // case Routes.ChallengeSkill:
      //   return _getPageRoute(ChallengeSkill(), settings);
      // /*  case Routes.SendChallenge:
      //   return _getPageRoute(SendChallenge(challengeModel: null,), settings);*/
      // case Routes.ChallengeSent:
      //   return _getPageRoute(ChallengeSent(), settings);
      // case Routes.ShareResult:
      //   return _getPageRoute(ShareResultView(), settings);
      // /*case Routes.LessonResultPopUp:
      //   return _getPageRoute(LessonResultPopUp(), settings);
      // case Routes.MyAnswerView:
      //   return _getPageRoute(MyAnswerView(), settings);
      // case Routes.SeeQuestionView:
      //   return _getPageRoute(SeeQuestionView(), settings);*/
      // case Routes.ChallengePopupInfo:
      //   return _getPageRoute(ChallengePopUpInfo(), settings);
      default:
        //return _getPageRoute(HomeView(), settings);

        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            body: Center(
              child: Text('The Page ${settings.name} does not exists.'),
            ),
          ),
        );
    }
  }

  static PageRoute _getPageRoute(Widget child, RouteSettings settings) {
    return _FadeRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }

  static PageRoute _getRightPageRoute(Widget child, RouteSettings settings) {
    return _FadeRightRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }

  static PageRoute _getLeftPageRoute(Widget child, RouteSettings settings) {
    return _FadeLeftRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }

  static Route _getBottomPageRoute(Widget child, RouteSettings settings) {
    return _FadeBottomRoute(
        child: child, routeName: settings.name!, arguments: settings.arguments);
  }
}

class _FadeBottomRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeBottomRoute(
      {required this.child, required this.routeName, required this.arguments})
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeRoute({this.child, this.routeName, this.arguments})
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class _FadeRightRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeRightRoute({this.child, this.routeName, this.arguments})
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class _FadeLeftRoute extends PageRouteBuilder {
  final Widget? child;
  final String? routeName;
  final Object? arguments;

  _FadeLeftRoute(
      {required this.child, required this.routeName, required this.arguments})
      : super(
          settings: RouteSettings(name: routeName, arguments: arguments),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
}

class NoAnimationMaterialPageRoute<T> extends MaterialPageRoute<T> {
  NoAnimationMaterialPageRoute({
    required WidgetBuilder builder,
    required RouteSettings settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
  }) : super(
          builder: builder,
          maintainState: maintainState,
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    var animation1 = Tween(begin: 1.0, end: 1.0).animate(animation);

    final theme = Theme.of(context).pageTransitionsTheme;
    return theme.buildTransitions<T>(
      this,
      context,
      animation1,
      secondaryAnimation,
      child,
    );
  }
}