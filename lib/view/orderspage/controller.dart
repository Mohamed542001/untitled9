import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled9/view/orderspage/states.dart';


class OrderCubit extends Cubit<OrderStates>{
  OrderCubit() : super(OrderInit());

  //To be easily when use this cubit
  static OrderCubit get(context)=>BlocProvider.of(context);

  bool pressed=false;
  bool pressed1=false;
  bool pressed2=false;
  bool pressed3=false;
  bool pressed4=false;

  void isPressed(){
    pressed=!pressed;
    emit(ProductPressedState());
  }
  void isPressed1(){
    pressed1=!pressed1;
    emit(ProductPressedState1());
  }
  void isPressed2(){
    pressed2=!pressed2;
    emit(ProductPressedState2());
  }
  void isPressed3(){
    pressed3=!pressed3;
    emit(ProductPressedState3());
  }
  void isPressed4(){
    pressed4=!pressed4;
    emit(ProductPressedState4());
  }

}