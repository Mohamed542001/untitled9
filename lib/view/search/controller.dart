import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled9/view/search/states.dart';


class SearchCubit extends Cubit<SearchStates>{
  SearchCubit() : super(SearchInit());

  //To be easily when use this cubit
  static SearchCubit get(context)=>BlocProvider.of(context);

  bool pressed=true;
  bool pressed1=false;
  bool pressed2=false;
  bool pressed3=false;
  bool pressed4=false;



  void isPressed(){
    pressed=!pressed;
    emit(SearchPressedState());
  }
  void isPressed1(){
    pressed1=!pressed1;
    emit(SearchPressedState1());
  }
  void isPressed2(){
    pressed2=!pressed2;
    emit(SearchPressedState2());
  }
  void isPressed3(){
    pressed3=!pressed3;
    emit(SearchPressedState3());
  }
  void isPressed4(){
    pressed4=!pressed4;
    emit(SearchPressedState4());
  }



}