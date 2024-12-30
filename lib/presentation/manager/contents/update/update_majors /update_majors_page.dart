import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/common_text_filed.dart';
import 'package:iut_ecms/core/widgets/result_notifier.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_state.dart';

@RoutePage()
class UpdateMajorsPage
    extends BasePage<UpdateMajorsCubit, UpdateMajorsBuildable, UpdateMajorsListenable> {
  UpdateMajorsPage({required this.majorId, required this.majorName, super.key});

  final String majorName;
  final int majorId;

  final TextEditingController controller = TextEditingController();

  late UpdateMajorsCubit _updateMajorCubit;
  @override
  void init(BuildContext context) {
    _updateMajorCubit = context.read<UpdateMajorsCubit>();
    if (majorName.isNotEmpty) {
      controller.text = majorName;
    }
    super.init(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget builder(BuildContext context, UpdateMajorsBuildable state) {
    final fixedWidth = context.width * 0.35;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.white,
          elevation: 0,
          title: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 39, left: 12),
              child: InkWell(
                onTap: () {
                  context.router.maybePop();
                },
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: 42,
                  width: 42,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.window,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.dottedBorder,
                      blurRadius: 16,
                      offset: Offset(1, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    SizedBox(
                      width: fixedWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Major name',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.headline,
                            ),
                          ),
                          const SizedBox(height: 4),
                          CommonTextField(
                            controller: controller,
                            hint: 'Enter Major Name',
                            borderRadius: 10,
                            onChanged: (value) {
                              _updateMajorCubit.updateMajorModel(name: value);
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 62),
                    SizedBox(
                      width: 200,
                      height: 48,
                      child: CommonButton.elevated(
                        loading: state.loading,
                        backgroundColor: AppColors.blueOriginal,
                        text: 'Save changes',
                        onPressed: () {
                          if (majorName.isNotEmpty) {
                            _updateMajorCubit.updateMajor(majorId, controller.text).then((_) {
                              ResultNotifier(
                                message: 'MAJOR UPDATED SUCCESSFULLY',
                                context: context,
                              ).showSuccess();
                              context.router.maybePop();
                            }).catchError((error) {
                              ResultNotifier(
                                message: 'FAILED TO UPDATE MAJOR: ${error.toString()}',
                                context: context,
                              ).showError();
                            });
                          } else {
                            if ((state.majors.name ?? '').isNotEmpty) {
                              _updateMajorCubit.addMajor().then((_) {
                                ResultNotifier(
                                  message: 'MAJOR ADDED SUCCESSFULLY',
                                  context: context,
                                ).showSuccess();
                                context.router.maybePop();
                              }).catchError((error) {
                                ResultNotifier(
                                  message: 'FAILED TO ADD MAJOR: ${error.toString()}',
                                  context: context,
                                ).showError();
                              });
                            } else {
                              ResultNotifier(
                                message: 'Please enter a valid major name.',
                                context: context,
                              ).showError();
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
