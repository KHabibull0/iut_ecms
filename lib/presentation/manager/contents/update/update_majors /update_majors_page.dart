import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iut_ecms/core/base/base_page.dart';
import 'package:iut_ecms/core/constants/app_colors.dart';
import 'package:iut_ecms/core/extensions/screen_size_extention.dart';
import 'package:iut_ecms/core/gen/assets.gen.dart';
import 'package:iut_ecms/core/widgets/common_button.dart';
import 'package:iut_ecms/core/widgets/common_text_filed.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_cubit.dart';
import 'package:iut_ecms/presentation/manager/contents/update/update_majors%20/cubit/update_majors_state.dart';

@RoutePage()
class UpdateMajorsPage
    extends BasePage<UpdateMajorsCubit, UpdateMajorsBuildable, UpdateMajorsListenable> {
  UpdateMajorsPage({super.key});

  final List<String> _items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'ElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberryElderberry',
    'Fig',
    'Grapes',
    'Honeydew',
  ];

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
                    Container(
                      height: 130,
                      width: fixedWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primary,
                      ),
                    ),
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
                            hint: 'Enter Major Name',
                            borderRadius: 10,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 42),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload Photo here',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.headline,
                          ),
                        ),
                        const SizedBox(height: 4),
                        SizedBox(
                          height: 130,
                          width: fixedWidth,
                          child: DottedBorder(
                            color: AppColors.dottedBorder,
                            strokeWidth: 1,
                            dashPattern: [10, 8],
                            borderType: BorderType.RRect,
                            radius: Radius.circular(10),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Assets.svgs.download.svg(),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Upload file here',
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 62),
                    SizedBox(
                      width: 200,
                      height: 48,
                      child: CommonButton.elevated(
                        backgroundColor: AppColors.blueOriginal,
                        text: 'Save changes',
                        onPressed: () {},
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
