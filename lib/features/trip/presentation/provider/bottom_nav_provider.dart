import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavProvider =
    StateNotifierProvider<BottomNavProvider, BottomNavState>((ref) {
  return BottomNavProvider();
});

class BottomNavProvider extends StateNotifier<BottomNavState> {
  BottomNavProvider()
      : super(
          BottomNavState(
            currentIndex: 0,
          ),
        );

  final PageController pageController = PageController();

  int updateCurrentPage(int index) {
    pageController.jumpToPage(index);
    state = state.copyWith(currentIndex: index);
    return index;
  }
}

class BottomNavState {
  final int currentIndex;

  BottomNavState({
    required this.currentIndex,
  });

  BottomNavState copyWith({
    int? currentIndex,
  }) {
    return BottomNavState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
