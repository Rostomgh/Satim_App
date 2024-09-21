import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:satim_hack/features/home/presentation/view/HomeScreen.dart';


part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  List<Widget> pages = [
    const HomeScreen(),
    //const SearchScreen(),
    //const EventExploreScreen(),
    
  ];
  static LayoutCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  void changeLayout(int index, BuildContext context) {
    if (index != currentIndex) {
      currentIndex = index;
      emit(ChangeLayout());
    }
  }
}