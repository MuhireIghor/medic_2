import 'package:app_test/common/form_image/image_header.dart';
import 'package:app_test/common/section/section_header.dart';
import 'package:app_test/common/style/spacing_style.dart';
import 'package:app_test/features/authentication/screens/auth/bloc/auth_bloc_bloc.dart';
import 'package:app_test/features/authentication/screens/auth/create-account/widgets/form_structure.dart';
import 'package:app_test/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  _CreateAccount createState() => _CreateAccount();
}

class _CreateAccount extends State<CreateAccount> {
  late final AuthBlocBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = BlocProvider.of<AuthBlocBloc>(context);
    _authBloc.add(const AuthBlocTypeEvent(AuthType.register)); 
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              TImageHeader(image: TImages.onBoardingImage1),
              TSectionHeader(text: 'Create an Account'),
              TStructuredForm(),
            ],
          ),
        ),
      ),
    );
  }
}