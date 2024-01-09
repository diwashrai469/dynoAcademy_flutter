import 'package:auto_route/auto_route.dart';
import 'package:dynoacademy/common/constant/ui_helpers.dart';
import 'package:dynoacademy/common/utils/app_text_style.dart';
import 'package:dynoacademy/common/utils/date_time_formater.dart';
import 'package:dynoacademy/common/utils/html_tags_remover.dart';
import 'package:dynoacademy/common/widgets/k_loading_indicator.dart';
import 'package:dynoacademy/core/injection/injection.dart';
import 'package:dynoacademy/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:dynoacademy/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    print("build called");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
        ),
        body: buildBody());
  }

  BlocProvider<NotificationBloc> buildBody() {
    return BlocProvider<NotificationBloc>(
      create: (_) => locator<NotificationBloc>()..add(GetNotificationEvent()),
      child: Builder(
        builder: (context) {
          return BlocBuilder<NotificationBloc, NotificationState>(
            builder: (_, state) {
              if (state is NotificationLoadingState) {
                return Center(child: kLoadingIndicator(context: context));
              } else if (state is NotificationLoadedState) {
                return ListView.builder(
                  itemCount: state.notificationResponseModel.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    final notificationDataIndex =
                        state.notificationResponseModel.data?[index];
                    return Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: disabledColor)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(removeHtmlTags(
                              notificationDataIndex?.notificationText ?? '')),
                          sHeightSpan,
                          if (notificationDataIndex?.createdAt?.isNotEmpty ==
                                  true &&
                              notificationDataIndex?.createdAt != null)
                            Text(
                              DateAndTimeFormater()
                                  .formatDateOfStringToDaysHourMinSec(
                                      notificationDataIndex?.createdAt ?? ''),
                              style: appTextStyle(context)
                                  ?.copyWith(color: disabledColor),
                            )
                        ],
                      ),
                    );
                  },
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          );
        },
      ),
    );
  }
}
