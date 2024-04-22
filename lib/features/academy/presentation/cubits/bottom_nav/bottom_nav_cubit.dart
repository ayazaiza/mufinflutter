import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_nav_state.dart';

part 'bottom_nav_cubit.freezed.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState()){
    int initialPage = 1;
   emit(state.copyWith(controller: PageController(initialPage: initialPage),index: initialPage));
  }

  void onTap(int index){
    state.controller?.animateToPage(index, duration: const Duration(milliseconds: 500), curve:  Curves.ease);
  }

  void selectPage(int index) {
    emit(state.copyWith(index: index));
  }
}
