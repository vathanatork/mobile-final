import 'package:flutter_bloc/flutter_bloc.dart';

// This Cubit manages the state of the AppBar's offset, which is a double value.
class AppBarCubit extends Cubit<double> {
  // The initial state is set to 0.
  AppBarCubit() : super(0);

  // This method updates the state with the new offset value.
  void setOffset(double offset) => emit(offset);
}

