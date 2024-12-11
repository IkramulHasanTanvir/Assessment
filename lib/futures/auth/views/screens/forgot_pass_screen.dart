import 'package:assessment/common/navigator.dart';
import 'package:assessment/futures/auth/views/widgets/auth_bottom.dart';
import 'package:assessment/futures/auth/views/widgets/custom_text_field.dart';
import 'package:assessment/futures/auth/views/widgets/logo_and_title.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';

class ForgotPassScreen extends StatefulWidget {
  const ForgotPassScreen({super.key});

  @override
  State<ForgotPassScreen> createState() => _ForgotPassScreenState();
}

class _ForgotPassScreenState extends State<ForgotPassScreen> {
  final TextEditingController _userIdTEController = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoAndTitle(
                title: 'Forgot Password',
                subtitle: 'Please, your user-id to reset the password',
              ),
              SizedBox(height: size.height * 0.032),
              _buildTextFormFiled(),
              SizedBox(height: size.height * 0.032),
              ElevatedButton(onPressed: () {
                CustomNavigator.pushAndRemoveAll(RouteName.changePassScreen);
              }, child: const Text('Submit')),
              SizedBox(height: size.height * 0.3),
              const AuthBottom(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormFiled() {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          CustomTextField(
            title: 'User ID/ Profile ID :',
            formField: TextFormField(
              decoration: const InputDecoration(hintText: 'Enter your User ID'),
              controller: _userIdTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (String? value) {
                if (value?.trim().isEmpty == true) {
                  return 'Enter a valid User ID';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _userIdTEController.dispose();
    super.dispose();
  }
}
