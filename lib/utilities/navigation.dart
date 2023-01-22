import 'package:go_router/go_router.dart';

import '../view/screens/auth_screens/forgot_password_screen.dart';
import '../view/screens/auth_screens/login_screen.dart';
import '../view/screens/auth_screens/otp_screen.dart';
import '../view/screens/auth_screens/signup_screen.dart';
import '../view/screens/onboarding_screen.dart';

class AppRouter {
  static const signUp = 'signUp';
  static const login = 'login';
  static const home = '/';
  static const forgotPassword = 'forgotPassword';
  static const otp = 'otp';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
          name: home,
          path: home,
          builder: (context, state) => const OnBoardingScreen(),
          routes: [
            GoRoute(
              name: login,
              path: login,
              builder: (context, state) => const LoginScreen(),
            ),
            GoRoute(
              name: signUp,
              path: signUp,
              builder: (context, state) => const SignUpScreen(),
            ),
            GoRoute(
              name: forgotPassword,
              path: forgotPassword,
              builder: (context, state) => const ForgotPasswordScreen(),
            ),
            GoRoute(
              name: otp,
              path: otp,
              builder: (context, state) => const OTPScreen(),
            ),
          ]),
    ],
  );
}
