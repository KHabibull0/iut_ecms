// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [MainNavigationPage]
class MainNavigationRoute extends PageRouteInfo<MainNavigationRouteArgs> {
  MainNavigationRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MainNavigationRoute.name,
          args: MainNavigationRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MainNavigationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MainNavigationRouteArgs>(
          orElse: () => const MainNavigationRouteArgs());
      return MainNavigationPage(key: args.key);
    },
  );
}

class MainNavigationRouteArgs {
  const MainNavigationRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MainNavigationRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ManageArticlesPage]
class ManageArticlesRoute extends PageRouteInfo<void> {
  const ManageArticlesRoute({List<PageRouteInfo>? children})
      : super(
          ManageArticlesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManageArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ManageArticlesPage();
    },
  );
}

/// generated route for
/// [ManageEBooksPage]
class ManageEBooksRoute extends PageRouteInfo<void> {
  const ManageEBooksRoute({List<PageRouteInfo>? children})
      : super(
          ManageEBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManageEBooksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ManageEBooksPage();
    },
  );
}

/// generated route for
/// [ManageELettersPage]
class ManageELettersRoute extends PageRouteInfo<void> {
  const ManageELettersRoute({List<PageRouteInfo>? children})
      : super(
          ManageELettersRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManageELettersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ManageELettersPage();
    },
  );
}

/// generated route for
/// [ManageMajorsPage]
class ManageMajorsRoute extends PageRouteInfo<ManageMajorsRouteArgs> {
  ManageMajorsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ManageMajorsRoute.name,
          args: ManageMajorsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ManageMajorsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageMajorsRouteArgs>(
          orElse: () => const ManageMajorsRouteArgs());
      return ManageMajorsPage(key: args.key);
    },
  );
}

class ManageMajorsRouteArgs {
  const ManageMajorsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ManageMajorsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ManageSubjectsPage]
class ManageSubjectsRoute extends PageRouteInfo<ManageSubjectsRouteArgs> {
  ManageSubjectsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ManageSubjectsRoute.name,
          args: ManageSubjectsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ManageSubjectsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageSubjectsRouteArgs>(
          orElse: () => const ManageSubjectsRouteArgs());
      return ManageSubjectsPage(key: args.key);
    },
  );
}

class ManageSubjectsRouteArgs {
  const ManageSubjectsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ManageSubjectsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return RegisterPage(key: args.key);
    },
  );
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignInRouteArgs>(orElse: () => const SignInRouteArgs());
      return SignInPage(key: args.key);
    },
  );
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SplashRouteArgs>(orElse: () => const SplashRouteArgs());
      return SplashPage(key: args.key);
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UpdateArticlesPage]
class UpdateArticlesRoute extends PageRouteInfo<void> {
  const UpdateArticlesRoute({List<PageRouteInfo>? children})
      : super(
          UpdateArticlesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateArticlesPage();
    },
  );
}

/// generated route for
/// [UpdateEBooksPage]
class UpdateEBooksRoute extends PageRouteInfo<void> {
  const UpdateEBooksRoute({List<PageRouteInfo>? children})
      : super(
          UpdateEBooksRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateEBooksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateEBooksPage();
    },
  );
}

/// generated route for
/// [UpdateELettersPage]
class UpdateELettersRoute extends PageRouteInfo<void> {
  const UpdateELettersRoute({List<PageRouteInfo>? children})
      : super(
          UpdateELettersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateELettersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateELettersPage();
    },
  );
}

/// generated route for
/// [UpdateMajorsPage]
class UpdateMajorsRoute extends PageRouteInfo<UpdateMajorsRouteArgs> {
  UpdateMajorsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UpdateMajorsRoute.name,
          args: UpdateMajorsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UpdateMajorsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UpdateMajorsRouteArgs>(
          orElse: () => const UpdateMajorsRouteArgs());
      return UpdateMajorsPage(key: args.key);
    },
  );
}

class UpdateMajorsRouteArgs {
  const UpdateMajorsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UpdateMajorsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UpdateSubjectsPage]
class UpdateSubjectsRoute extends PageRouteInfo<void> {
  const UpdateSubjectsRoute({List<PageRouteInfo>? children})
      : super(
          UpdateSubjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpdateSubjectsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UpdateSubjectsPage();
    },
  );
}

/// generated route for
/// [UserArticlesPage]
class UserArticlesRoute extends PageRouteInfo<UserArticlesRouteArgs> {
  UserArticlesRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserArticlesRoute.name,
          args: UserArticlesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserArticlesRouteArgs>(
          orElse: () => const UserArticlesRouteArgs());
      return UserArticlesPage(key: args.key);
    },
  );
}

class UserArticlesRouteArgs {
  const UserArticlesRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserArticlesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserContentTypePage]
class UserContentTypeRoute extends PageRouteInfo<UserContentTypeRouteArgs> {
  UserContentTypeRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserContentTypeRoute.name,
          args: UserContentTypeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserContentTypeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserContentTypeRouteArgs>(
          orElse: () => const UserContentTypeRouteArgs());
      return UserContentTypePage(key: args.key);
    },
  );
}

class UserContentTypeRouteArgs {
  const UserContentTypeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserContentTypeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserDocumentReaderPage]
class UserDocumentReaderRoute
    extends PageRouteInfo<UserDocumentReaderRouteArgs> {
  UserDocumentReaderRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserDocumentReaderRoute.name,
          args: UserDocumentReaderRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserDocumentReaderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserDocumentReaderRouteArgs>(
          orElse: () => const UserDocumentReaderRouteArgs());
      return UserDocumentReaderPage(key: args.key);
    },
  );
}

class UserDocumentReaderRouteArgs {
  const UserDocumentReaderRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserDocumentReaderRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserEBookPage]
class UserEBookRoute extends PageRouteInfo<UserEBookRouteArgs> {
  UserEBookRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserEBookRoute.name,
          args: UserEBookRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserEBookRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserEBookRouteArgs>(
          orElse: () => const UserEBookRouteArgs());
      return UserEBookPage(key: args.key);
    },
  );
}

class UserEBookRouteArgs {
  const UserEBookRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserEBookRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserLettersPage]
class UserLettersRoute extends PageRouteInfo<UserLettersRouteArgs> {
  UserLettersRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          UserLettersRoute.name,
          args: UserLettersRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'UserLettersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserLettersRouteArgs>(
          orElse: () => const UserLettersRouteArgs());
      return UserLettersPage(key: args.key);
    },
  );
}

class UserLettersRouteArgs {
  const UserLettersRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserLettersRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserSubjectsPage]
class UserSubjectsRoute extends PageRouteInfo<void> {
  const UserSubjectsRoute({List<PageRouteInfo>? children})
      : super(
          UserSubjectsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserSubjectsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserSubjectsPage();
    },
  );
}
