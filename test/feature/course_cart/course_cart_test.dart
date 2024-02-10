import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/course_cart/data/model/course_cart_response_model/course_cart_response_model.dart';
import 'package:dynoacademy/features/course_cart/domain/usecase/course_cart_usecase.dart';
import 'package:dynoacademy/features/course_cart/presentation/cubit/course_cart_cubit.dart';
import 'package:dynoacademy/features/dashboard/cubit/dashboard_cubit_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCourseCartUsecase extends Mock implements CourseCartUsecase {}

class MockDashboardCubit extends Mock implements DashboardCubitCubit {}

class MockToastService extends Mock implements ToastService {}

class MockNetworkfailure extends Mock implements NetworkFailure {}

void main() {
  late MockCourseCartUsecase mockCourseCartUsecase;
  late MockDashboardCubit mockDashboardCubit;
  late MockToastService mockToastService;
  late CourseCartCubit courseCartCubit;

  setUp(
    () {
      mockCourseCartUsecase = MockCourseCartUsecase();
      mockToastService = MockToastService();

      mockDashboardCubit = MockDashboardCubit();
      courseCartCubit = CourseCartCubit(
          mockCourseCartUsecase, mockToastService, mockDashboardCubit);
    },
  );

  tearDown(() {
    courseCartCubit.close();
  });

  final courseId = CourseId(
    s3Folder: "s3_folder_value",
    sId: "course_id_123",
    mentorId: "mentor_id_456",
    courseName: "Example Course",
    courseDuration: 10,
    courseInfo: "Course info",
    courseDescription: "Course description",
    studentsEnrolled: 100,
    rating: 4.5,
    raters: 50,
    cost: 50,
    lessons: 10,
    skillLevel: "Intermediate",
    language: "English",
    active: true,
    approved: true,
    courseCreated: "2024-02-09T08:00:00Z",
    createdAt: "2024-02-09T08:00:00Z",
    updatedAt: "2024-02-09T08:00:00Z",
    iV: 1,
    thumbnail: "thumbnail_url",
    courseSlug: "example-course",
    views: 1000,
    certificateLearning: "Certificate of Completion",
    highCost: 100,
    discountPriceEnds: "2024-02-09T08:00:00Z",
    id: "course_id_123",
  );

  // Creating Data instance
  final data = Data(
    sId: "data_id_123",
    userId: "user_id_456",
    courseId: courseId,
    courseStatus: "Completed",
    active: true,
    lessonCompleted: [], // Assuming lessonCompleted is null for simplicity
    createdAt: "2024-02-09T08:00:00Z",
    updatedAt: "2024-02-09T08:00:00Z",
    iV: 1,
    id: "data_id_123",
  );

  // Creating CourseCartResponseModel instance
  final responseModel = CourseCartResponseModel(
    status: "success",
    data: [data],
  );

  group(
    "Course cart is empty state",
    () {
      blocTest<CourseCartCubit, CourseCartState>(
        "Get cart course with empty data",
        build: () {
          when(() => mockCourseCartUsecase.getCartCourse()).thenAnswer(
              (invocation) async => Right(CourseCartResponseModel(data: [])));
          return courseCartCubit;
        },
        act: (bloc) => bloc.getCartCourse(),
        expect: () =>
            [isA<CourseCartDataLoadingState>(), isA<DataEmptyState>()],
      );

      blocTest<CourseCartCubit, CourseCartState>(
        "Get cart course with data data",
        build: () {
          when(() => mockCourseCartUsecase.getCartCourse())
              .thenAnswer((invocation) async => Right(responseModel));
          return courseCartCubit;
        },
        act: (bloc) => bloc.getCartCourse(),
        expect: () => [
          isA<CourseCartDataLoadingState>(),
          isA<CourseCartDataLoadedState>()
        ],
      );
    },
  );
}
