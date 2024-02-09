import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:dynoacademy/core/services/network_services.dart';
import 'package:dynoacademy/core/services/toast_services.dart';
import 'package:dynoacademy/features/course_details/data/model/course_details_response_model/course_details_response_model.dart';
import 'package:dynoacademy/features/course_details/data/model/course_status_response_model/course_status_response_model.dart';
import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart';
import 'package:dynoacademy/features/course_details/presentation/bloc/course_details_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSingleCourseDetailsUsecase extends Mock
    implements GetSingleCoursesUsecase {}

class MockToastService extends Mock implements ToastService {}

class MockNetworkfailure extends Mock implements NetworkFailure {}

void main() {
  late MockSingleCourseDetailsUsecase mockCourseDetailsUsecase;
  late MockToastService mockToastService;
  late CourseDetailsBloc courseDetailsBloc;

  setUp(() {
    mockToastService = MockToastService();
    mockCourseDetailsUsecase = MockSingleCourseDetailsUsecase();
    courseDetailsBloc =
        CourseDetailsBloc(mockCourseDetailsUsecase, mockToastService);
  });

  tearDown(() {
    courseDetailsBloc.close();
  });

  group("Course details", () {
    const mentorId = MentorId(
      id: "639810b821cc2c2618d9f13f",
      name: "Sujan Pokhrel",
    );

    // Creating CourseData instance
    const courseData = CourseData(
      id: "63983544077af086c80298ce",
      mentorId: mentorId,
      courseName: "ReactJS In Nepali: Learn Frontend development with ReactJS",
      courseDuration: 130,
      courseInfo:
          "Advance Your Web Development Skills with Our Comprehensive ReactJS Course - Join students who have already advanced their careers with our course on ReactJS – the popular JavaScript library used by top companies. ",
      courseDescription:
          "<div style=\"font-size:16px;line-height:2\">\n\nWelcome to our ReactJS course for beginners! This comprehensive course is designed to give you a solid foundation in the popular JavaScript library, ReactJS. You'll learn the basics of ReactJS, including components, state, and props, as well as more advanced concepts such as hooks, context, http requests and performance optimization. Our experienced instructors will guide you through hands-on projects and interactive exercises to ensure that you have a well-rounded understanding of ReactJS. <br/><br/>\n\nBy the end of this course, you'll be able to build efficient and scalable front-end applications using ReactJS. Whether you're a beginner looking to learn a new skill or a developer looking to expand your knowledge, this course has something for you. Enroll now and start building with ReactJS!\n\n<br/><br/>\n\n<span style=\"font-size:25px;\"><b>What you'll learn</b></span> <br/><br/>\n\n\n\n✔️ Progress from the basics of ReactJS to more advanced concepts at your own pace<br/><br/>\n\n\n✔️ Gain the skills and qualifications to pursue high-paying job opportunities or work as a freelancer in the highly sought-after field of web development <br/><br/>\n\n\n✔️ Create efficient, high-performance, user-friendly, and reactive web applications <br/><br/>\n\n\n✔️ Our courses in Nepali provide a thorough understanding of ReactJS concepts<br/><br/>\n\n\n\n\n<span style=\"font-size:25px;\"><b>Requirements?</b></span> <br/><br/>\n\n- A basic understanding of JavaScript, HTML, and CSS is recommended for this course <br/><br/>\n\n- No prior experience with React is necessary for this course, making it suitable for beginners<br/><br/>\n\n- Having a secondary monitor can be helpful in journey of being an frontend developer as it allows you to code, see results, and learn more efficiently <br/><br/>\n\n- For the best experience testing and running React, we recommend using either Mozilla Firefox or Google Chrome as your browser. In this course, Mozilla Firefox is used as default Browser.<br/><br/>\n\n\n<b> This course assumes no prior knowledge and begins with the basics. A basic understanding of web development and JavaScript is recommended, but a brief JavaScript refresher is included to ensure a common foundation for all learners. Please have a look at the Syllabus section to know what's included in this course. </b><br/><br/>\n\n<span style=\"font-size:25px;\"><b>Note from Instructor:</b></span> <br/><br/>\n\nAs a full stack developer with over a decade of experience, I am passionate about sharing my knowledge with others and helping them achieve their goals in coding. With a strong track record of guiding students to success, I am confident in my ability to be a valuable and effective teacher. In my career, I have had the opportunity to work on a wide range of projects, giving me a well-rounded skillset and the ability to adapt to new challenges. I am excited to share my expertise with you and help you become a proficient developer.  I am confident that the effort and dedication I have put into this course will pay off, and you will reap the benefits of my hard work. I hope you will gain valuable knowledge and skills that will help you succeed in your career. <br/>\n\n<b>- Sujan Pokhrel</b>\n\n</div>",
      studentsEnrolled: 7541,
      rating: 4.9,
      raters: 255,
      cost: 999,
      lessons: 0,
      skillLevel: "All Levels",
      language: "Nepali",
      active: true,
      approved: true,
      courseCreated: "2022-12-13T08:18:12.251Z",
      createdAt: "2022-12-13T08:18:12.255Z",
      updatedAt: "2024-02-09T07:24:18.363Z",
      iV: 0,
      thumbnail: "https://cdn.dynoacademy.com/react-sujandstc/rEACTjS_1.png",
      courseSlug: "reactjs-for-beginners",
      views: 21097,
      certificateLearning:
          "The course provided an in-depth understanding of ReactJS and equipped the student with the skills needed to develop modern web applications.",
      highCost: 8250,
      discountPriceEnds: "2023-01-24T12:18:12.251Z",
    );

    // Creating PageProps instance
    const pageProps = PageProps(
      courseData: courseData,
      successData: "success",
    );

    // Creating CourseDetailsResponseModel instance
    const responseModel = CourseDetailsResponseModel(
      pageProps: pageProps,
      bNSSP: true,
    );

    // Creating CourseStatusResponseModel instance
    final responseModelForCheckStatus = CourseStatusResponseModel(
      status: "success",
      data: Data(
        sId: "status_id_123",
        userId: "user_id_456",
        courseId: "course_id_789",
        courseStatus: "Completed",
        active: true,
        lessonCompleted: ["lesson_id_1", "lesson_id_2", "lesson_id_3"],
        createdAt: "2024-02-09T08:00:00Z",
        updatedAt: "2024-02-09T08:30:00Z",
        iV: 1,
        lastPlayedLessonId: "lesson_id_3",
        id: "data_id_123",
      ),
    );
    blocTest<CourseDetailsBloc, CourseDetailsState>(
      'Get single course details',
      build: () {
        when(() => mockCourseDetailsUsecase.call("reactjs-for-beginners"))
            .thenAnswer((_) async => const Right(responseModel));

        when(() => mockCourseDetailsUsecase
                .getCourseStatus("63983544077af086c80298ce"))
            .thenAnswer((_) async => Right(responseModelForCheckStatus));
        return courseDetailsBloc;
      },
      act: (bloc) => bloc.add(const GetSingleCourseDetailsEvent(
          slug: "reactjs-for-beginners", courseId: "63983544077af086c80298ce")),
      expect: () => [
        isA<CourseDetailsLoadingState>(),
        isA<CourseDetailsLoadedState>(),
      ],
    );
  });
}
