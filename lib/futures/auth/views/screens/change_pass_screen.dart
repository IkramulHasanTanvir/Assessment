import 'package:assessment/common/navigator.dart';
import 'package:assessment/futures/auth/views/widgets/auth_bottom.dart';
import 'package:assessment/futures/auth/views/widgets/custom_text_field.dart';
import 'package:assessment/futures/auth/views/widgets/logo_and_title.dart';
import 'package:assessment/routes/route_name.dart';
import 'package:flutter/material.dart';

class ChangePassScreen extends StatefulWidget {
  const ChangePassScreen({super.key});

  @override
  State<ChangePassScreen> createState() => _ChangePassScreenState();
}

class _ChangePassScreenState extends State<ChangePassScreen> {
  final TextEditingController _currentTEController = TextEditingController();
  final TextEditingController _newTEController = TextEditingController();
  final TextEditingController _confirmTEController = TextEditingController();

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LogoAndTitle(
                title: 'Change Password',
                subtitle: 'Please create a new password for your account',
              ),
              SizedBox(height: size.height * 0.032),
              _buildTextFormFiled(),
              SizedBox(height: size.height * 0.032),
              ElevatedButton(
                  onPressed: () {
                    CustomNavigator.pushAndRemoveAll(
                        RouteName.pinConfirmationScreen);
                  },
                  child: const Text('Confirm')),
              SizedBox(height: size.height * 0.1),
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
            title: 'Current Password',
            formField: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  hintText: 'Enter your current password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _obscureText = !_obscureText;
                        setState(() {});
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ))),
              controller: _currentTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (String? value) {
                if (value?.trim().isEmpty == true) {
                  return 'Enter your password';
                }
                return null;
              },
            ),
          ),
          CustomTextField(
            title: 'New Password',
            formField: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  hintText: 'Enter your new password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _obscureText = !_obscureText;
                        setState(() {});
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ))),
              controller: _currentTEController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (String? value) {
                if (value?.trim().isEmpty == true) {
                  return 'Enter your password';
                }
                return null;
              },
            ),
          ),
          CustomTextField(
            title: 'Confirm New Password',
            formField: TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  hintText: 'Re-enter your new password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        _obscureText = !_obscureText;
                        setState(() {});
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ))),
              controller: _currentTEController,
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
    _currentTEController.dispose();
    _newTEController.dispose();
    _confirmTEController.dispose();
    super.dispose();
  }
}
