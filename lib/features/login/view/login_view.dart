import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freetaksiapp/core/init/theme/theme_provider.dart';
import 'package:freetaksiapp/features/login/cubit/login_cubit_cubit.dart';
import 'package:freetaksiapp/product/widgets/button/custom_elevated_button.dart';
import 'package:freetaksiapp/product/widgets/input/custom_form_password_input.dart';
import 'package:freetaksiapp/product/widgets/input/login_custom_form_input.dart';
import 'package:rive/rive.dart';

class LoginPage extends StatelessWidget {
  late RiveAnimationController _controller;
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubitCubit>(
      create: (context) => LoginCubitCubit(_controller),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(
              "Go Taksi",
              style: MyThemes.lightTheme.textTheme.headline2?.copyWith(
                  fontSize: 40,
                  color: Colors.amber.shade100,
                  fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 100,
              width: 50,
              child:  RiveAnimation.asset('assets/animations/taxi.riv',fit: BoxFit.cover,)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LoginInputFormField(),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: LoginPasswordCustomField(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                child: CustomElevationButton(
                    onPressed: () async {},
                    title: Text(
                      "Giriş Yap",
                      style: MyThemes.lightTheme.textTheme.headline2?.copyWith(
                          fontSize: 20,
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
