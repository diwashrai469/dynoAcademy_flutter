import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/widgets/k_button.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/app_routers/app_routers.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart';
import 'package:dynoacademy/features/course_cart/presentation/widget/cart_course_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CourseCartView extends StatelessWidget {
  const CourseCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
      ),
      body: builderBody(context),
    );
  }

  builderBody(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CourseCartCubit>()..getCartCourse(),
      child: BlocBuilder<CourseCartCubit, CourseCartState>(
        builder: (context, state) {
          if (state is CourseCartDataLoadingState) {
            return Center(child: kLoadingIndicator(context: context));
          } else if (state is DataEmptyState) {
            return const Center(
              child: Text(
                "No any courses added to cart.",
              ),
            );
          } else if (state is CourseCartDataLoadedState) {
            return cartCourseList(
                state: state,
                context: context,
                courseCartResponseModel: state.courseCartResponseModel);
          } else if (state is DataErrorState) {
            Center(
              child: Column(
                children: [
                  const Text("Failed to Load data"),
                  sHeightSpan,
                  KButton(
                      child: const Text("Go back"),
                      onPressed: () {
                        locator<AppRouters>().pop();
                      })
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
