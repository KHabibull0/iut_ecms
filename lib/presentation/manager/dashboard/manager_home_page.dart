import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/presentation/manager/dashboard/cubit/manager_home_cubit.dart';
import 'package:iut_ecms/presentation/manager/dashboard/cubit/manager_home_state.dart';

class ManagerHomePage
    extends BasePage<ManagerHomeCubit, ManagerHomeBuildable, ManagerHomeListenable> {
  ManagerHomePage({super.key});

  @override
  Widget builder(BuildContext context, ManagerHomeBuildable state) {
    late final ManagerHomeCubit managerHomeCubit = context.read<ManagerHomeCubit>();

    return loadable(
        error: state.error,
        loading: false,
        builder: () {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async => await managerHomeCubit.getDashboardStatistics().then((result) {
                  if (result.isNotEmpty) {
                    ResultNotifier(message: result, context: context).showError();
                  }
                }),
                child: Row(
                  children: [
                    Text(
                      'Statistics',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textBlueOriginal,
                      ),
                    ),
                    const Spacer(),
                    Assets.svgs.update.svg(height: 20, width: 20),
                    const SizedBox(width: 4),
                    Text(
                      'Update',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textBlueOriginal,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    spacing: 32,
                    children: [
                      _dashboardItem(
                        header: 'Total Users',
                        secondary: 'users',
                        loading: state.loading,
                        data: '${state.dashboardStatistics.totalUsers ?? 0}',
                      ),
                      _dashboardItem(
                        header: 'Total Majors',
                        secondary: 'majors',
                        loading: state.loading,
                        data: '${state.dashboardStatistics.totalMajors ?? 0}',
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: _dashboardItem(
                              header: 'Total eBooks',
                              loading: state.loading,
                              secondary: 'ebooks',
                              data: '${state.dashboardStatistics.totalBooks ?? 0}',
                            ),
                          ),
                          Expanded(
                            child: _dashboardItem(
                              header: 'Total Articles',
                              secondary: 'articles',
                              loading: state.loading,
                              data: '${state.dashboardStatistics.totalArticleCount ?? 0}',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Expanded(
                            child: _dashboardItem(
                              header: 'Total e-Letters',
                              loading: state.loading,
                              secondary: 'e-letters',
                              data: '${state.dashboardStatistics.totalELetters ?? 0}',
                            ),
                          ),
                          Expanded(
                            child: _dashboardItem(
                              loading: state.loading,
                              header: 'Total contents',
                              secondary: 'contents',
                              data: '${state.dashboardStatistics.totalContents ?? 0}',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

  Widget _dashboardItem({
    required String secondary,
    required String header,
    required bool loading,
    required String data,
  }) {
    return Container(
      height: 138,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primary,
      ),
      child: Container(
        height: 138,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.semiTransparentBlack,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              header,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loading
                    ? const CircularProgressIndicator.adaptive()
                    : Text(
                        data,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                const SizedBox(width: 4),
                Text(
                  secondary,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
