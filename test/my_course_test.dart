import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/my_course/data/model/my_courses_response_model.dart';
import 'package:dynoacademy/features/my_course/domain/usecase/my_course_usecase.dart';
import 'package:dynoacademy/features/my_course/presentation/cubit/my_course_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockMyCourseUsecase extends Mock implements MyCourseUsecase {}

class MockToastService extends Mock implements ToastService {}

class MockNetworkfailure extends Mock implements NetworkFailure {}

class MockMyCoursesResponseModel extends Mock
    implements MyCoursesResponseModel {}

void main() {
  group('MyCourseCubit', () {
    late MockMyCourseUsecase mockMyCourseUsecase;
    late MockToastService mockToastService;
    late MockNetworkfailure mockNetworkfailure;
    late MyCourseCubit myCourseCubit;

    setUp(() {
      mockMyCourseUsecase = MockMyCourseUsecase();
      mockToastService = MockToastService();
      mockNetworkfailure = MockNetworkfailure();
      myCourseCubit = MyCourseCubit(mockMyCourseUsecase, mockToastService);
    });

    tearDown(() {
      myCourseCubit.close();
    });

    const myCourseResponseModel = MyCoursesResponseModel(
      status: "success",
      data: [
        Data(
          sId: "1",
          userId: "user1",
          courseId: CourseId(
            s3Folder: "folder1",
            sId: "course1",
            mentorId: "mentor1",
            courseName: "Course 1",
            courseDuration: 10,
            courseInfo: "Demo course info",
            courseDescription: "Demo course description",
            studentsEnrolled: 100,
            rating: 4.5,
            raters: 50,
            cost: 50,
            lessons: 10,
            skillLevel: "Intermediate",
            language: "English",
            active: true,
            approved: true,
            courseCreated: "2024-01-01",
            createdAt: "2024-01-01",
            updatedAt: "2024-01-01",
            iV: 1,
            thumbnail: "thumbnail_url",
            courseSlug: "course-slug",
            views: 500,
            certificateLearning: "Certificate of Completion",
            highCost: 100,
            isUnderDevelopment: false,
            discountPriceEnds: "2024-02-01",
            id: "course_id_1",
          ),
          courseStatus: "In Progress",
          active: true,
          lessonCompleted: ["lesson1", "lesson2"],
          createdAt: "2024-01-01",
          updatedAt: "2024-01-01",
          iV: 1,
          expiryAlerted: false,
          expiryAlertedTime: "2024-02-01",
          lastPlayedLessonId: "lesson1",
          id: "data_id_1",
        ),
      ],
    );

    blocTest<MyCourseCubit, MyCourseState>(
      'emits [MyCourseLoadingState, MyCourseEmptyState] when getMyCourse returns empty data',
      build: () {
        when(() => mockMyCourseUsecase.call()).thenAnswer(
            (_) async => const Right(MyCoursesResponseModel(data: [])));
        return myCourseCubit;
      },
      act: (cubit) => cubit.getMyCourse(),
      expect: () => [
        isA<MyCourseLoadingState>(),
        isA<MyCourseEmptyState>(),
      ],
    );

    blocTest<MyCourseCubit, MyCourseState>(
      'emits [MyCourseLoadingState, MyCourseLoadedState] when getMyCourse returns non-empty data',
      build: () {
        when(() => mockMyCourseUsecase.call())
            .thenAnswer((_) async => const Right(myCourseResponseModel));
        return myCourseCubit;
      },
      act: (cubit) => cubit.getMyCourse(),
      expect: () => [
        isA<MyCourseLoadingState>(),
        isA<MyCourseLoadedState>(),
      ],
    );

    blocTest<MyCourseCubit, MyCourseState>(
      'emits [MyCourseLoadingState] when getMyCourse returns error',
      build: () {
        when(() => mockMyCourseUsecase.call())
            .thenAnswer((_) async => Left(mockNetworkfailure));
        return myCourseCubit;
      },
      act: (cubit) => cubit.getMyCourse(),
      expect: () => [
        isA<MyCourseLoadingState>(),
        isA<MyCourseErrorState>(),
      ],
    );
  });
}
