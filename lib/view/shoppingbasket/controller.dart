import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled9/view/shoppingbasket/states.dart';


class BasketCubit extends Cubit<BasketStates>{
  BasketCubit() : super(BasketInit());

  //To be easily when use this cubit
  static BasketCubit get(context)=>BlocProvider.of(context);

  int count=1;
  bool pressed=false;
  bool pressed1=false;
  bool pressed2=false;
  bool pressed3=false;
  bool pressed4=false;
  void minus(){
    count--;
    emit(BasketMinusState());
  }
  void plus(){
    count++;
    emit(BasketPlusState());
  }
  void isPressed(){
    pressed=!pressed;
    emit(BasketPressedState());
  }
  void isPressed1(){
    pressed1=!pressed1;
    emit(BasketPressedState1());
  }
  void isPressed2(){
    pressed2=!pressed2;
    emit(BasketPressedState2());
  }
  void isPressed3(){
    pressed3=!pressed3;
    emit(BasketPressedState3());
  }
  void isPressed4(){
    pressed4=!pressed4;
    emit(BasketPressedState4());
  }

}