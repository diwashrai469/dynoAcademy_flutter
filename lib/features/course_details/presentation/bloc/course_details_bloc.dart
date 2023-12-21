import 'package:bloc/bloc.dart';


import 'package:dynoacademy/core/services/toast_services.dart';


import 'package:dynoacademy/features/course_details/data/model/course_videos_preview_response_model/course_videos_preview_response_model.dart';


import 'package:dynoacademy/features/course_details/domain/usecases/get_single_courses_usecase.dart';


import 'package:equatable/equatable.dart';


import 'package:injectable/injectable.dart';


import '../../../../core/services/network_services.dart';


import '../../data/model/add_to_cart_response_model/add_to_cart_response_model.dart';


import '../../data/model/course_details_response_model/course_details_response_model.dart';


part 'course_details_event.dart';


part 'course_details_state.dart';


@injectable

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {

  final GetSingleCoursesUsecase _getSingleCoursesUsecase;


  final ToastService _toastService;


  CourseDetailsBloc(this._getSingleCoursesUsecase, this._toastService)

      : super(CourseDetailsEmpty()) {

    on<GetSingleCourseDetails>(_handleGetSingleCourseDetails);


    on<GetVideosPreview>(_handleGetVideoPreview);


    on<ChangeVideoUrl>(_handlechangeVideoUrl);


    on<AddToCart>(_handleaddToCart);

  }


  void _handlechangeVideoUrl(

      ChangeVideoUrl event, Emitter<CourseDetailsState> emit) async {

    // Retrieve the current state


    CourseDetailsState currentState = state;


    // Check if the current state is an instance of CourseVideoPreviewLoaded


    if (currentState is CourseVideoPreviewLoaded) {

      // Create a new instance of CourseVideoPreviewLoaded with the updated video URL


      CourseDetailsState newState = CourseVideoPreviewLoaded(

        videoUrl: event.videoUrl,

        courseVideosPreviewResponseModel:

            currentState.courseVideosPreviewResponseModel,

      );


      // Emit the new state


      emit(newState);

    } else {

      // If the current state is not CourseVideoPreviewLoaded, emit the SelectedVideoUrl state


      emit(SelectedVideoUrl(selectedVideoUrl: event.videoUrl));

    }

  }


  void _handleGetSingleCourseDetails(

      GetSingleCourseDetails event, Emitter<CourseDetailsState> emit) async {

    emit(CourseDetailsLoading());


    var result = await _getSingleCoursesUsecase.call(event.slug);


    result.fold(

      (NetworkFailure error) {

        _toastService.e(error.message.toString());

      },

      (CourseDetailsResponseModel data) {

        emit(CourseDetailsLoaded(

          courseDetailsResponseModel: data,

        ));

      },

    );

  }


  void _handleGetVideoPreview(

      GetVideosPreview event, Emitter<CourseDetailsState> emit) async {

    emit(CourseDetailsLoading());


    var result = await _getSingleCoursesUsecase.getVideoPreview(event.courseId);


    result.fold(

      (NetworkFailure error) {

        _toastService.e(error.message.toString());

      },

      (CourseVideosPreviewResponseModel data) {

        emit(CourseVideoPreviewLoaded(

            courseVideosPreviewResponseModel: data,

            videoUrl: data.data?.first.lessonVideoUrl ?? ''));

      },

    );

  }


  void _handleaddToCart(

      AddToCart event, Emitter<CourseDetailsState> emit) async {

    emit(CourseDetailsLoaded(

      courseDetailsResponseModel: state.courseDetailsResponseModel,

      isAddingToCart: true,

    ));


    var result = await _getSingleCoursesUsecase.addToCart(event.courseId);


    result.fold(

      (NetworkFailure error) {

        _toastService.e(error.message.toString());

      },

      (AddtoCartResponseModel data) {

        _toastService.s(data.message.toString());

      },

    );


    emit(

      CourseDetailsLoaded(

        courseDetailsResponseModel: state.courseDetailsResponseModel,

        isAddingToCart: false,

      ),

    );

  }

}

