import 'package:assessment/common/navigator.dart';
import 'package:assessment/futures/auth/views/widgets/auth_bottom.dart';
import 'package:assessment/futures/auth/views/widgets/custom_divider.dart';
import 'package:assessment/futures/auth/views/widgets/custom_text_field.dart';
import 'package:assessment/futures/auth/views/widgets/forgot_section.dart';
import 'package:assessment/futures/auth/views/widgets/logo_and_title.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userIdTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  bool _obscureText = true;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LogoAndTitle(
              title: 'Login',
              subtitle: 'Please enter your User ID and Password',
            ),
            SizedBox(height: size.height * 0.032),
            _buildTextFormFiled(),
            const ForgotSection(),
            SizedBox(height: size.height * 0.032),
            ElevatedButton(
              onPressed: () {
                CustomNavigator.pushAndRemoveAll(RouteName.homeScreen);
              },
              child: const Text('Login'),
            ),
            SizedBox(height: size.height * 0.032),
            const CustomDivider(title: 'More'),
            SizedBox(height: size.height * 0.032),
            const AuthBottom(isLogin: true),
          ],
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
            title: 'User ID :',
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
          CustomTextField(
            title: 'Password :',
            formField: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  hintText: 'Enter your password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _obscureText = !_obscureText;
                        setState(() {});
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ))),
              controller: _passwordTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (String? value) {
                if (value?.trim().isEmpty == true) {
                  return 'Enter your password';
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
    _passwordTEController.dispose();
    super.dispose();
  }
}
