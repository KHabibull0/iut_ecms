import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:iut_ecms/presentation/common/auth/register/register_page.dart';
import 'package:iut_ecms/presentation/common/auth/sign_in/sign_in_page.dart';
import 'package:iut_ecms/presentation/common/main_navigation_page/main_navigation_page.dart';
import 'package:iut_ecms/presentation/common/splash/splash_page.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_articles/manage_articles_page.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_books/manage_e_books_page.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_e_letters/manage_e_letters_page.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_majors/manage_majors_page.dart';
import 'package:iut_ecms/presentation/manager/contents/manage/manage_subjects/manage_subjects_page.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_articles/update_articles_page.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_books/update_e_books_page.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_e_letters/update_e_letters_page.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/update_majors_page.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_subjects/update_subjects_page.dart';
import 'package:iut_ecms/presentation/user/content/user_articles_page/user_articles_page.dart';
import 'package:iut_ecms/presentation/user/content/user_content_type/user_content_type_page.dart';
import 'package:iut_ecms/presentation/user/content/user_document_reader/user_document_reader_page.dart';
import 'package:iut_ecms/presentation/user/content/user_e_book_page/user_e_book_page.dart';
import 'package:iut_ecms/presentation/user/content/user_letters_page/user_letters_page.dart';

import '../../presentation/user/content/user_subjects_page/user_subjects_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: MainNavigationRoute.page),

        /// User Pages
        AutoRoute(page: UserSubjectsRoute.page),
        AutoRoute(page: UserContentTypeRoute.page),
        AutoRoute(page: UserEBookRoute.page),
        AutoRoute(page: UserArticlesRoute.page),
        AutoRoute(page: UserLettersRoute.page),
        AutoRoute(page: UserDocumentReaderRoute.page),

        /// Manager Pages
        AutoRoute(page: ManageMajorsRoute.page),
        AutoRoute(page: ManageSubjectsRoute.page),
        AutoRoute(page: ManageEBooksRoute.page),
        AutoRoute(page: ManageArticlesRoute.page),
        AutoRoute(page: ManageELettersRoute.page),
        AutoRoute(page: UpdateMajorsRoute.page),
        AutoRoute(page: UpdateSubjectsRoute.page),
        AutoRoute(page: UpdateEBooksRoute.page),
        AutoRoute(page: UpdateArticlesRoute.page),
        AutoRoute(page: UpdateELettersRoute.page),
      ];
}
