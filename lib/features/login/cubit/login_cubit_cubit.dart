import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rive/rive.dart';

part 'login_cubit_state.dart';

class LoginCubitCubit extends Cubit<LoginCubitState> {
  RiveAnimationController _controller;
  LoginCubitCubit(this._controller) : super(LoginCubitInitial()) {
    _controller = OneShotAnimation(
      'taxi',
      autoplay: true,
    );
  }
}
