import 'package:go_router/go_router.dart';
import 'package:stylish_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:stylish_app/features/auth/presentation/views/sign_in_view.dart';
import 'package:stylish_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:stylish_app/features/home/presentation/views/home_view.dart';
import 'package:stylish_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:stylish_app/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kOnboardingView = '/onboardingView';
  static const kSignInView = '/signInView';
  static const kSignUpView = '/signUpView';
  static const kForgetPasswordView = '/forgetPasswordView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kForgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      )
    ],
  );
}
