import 'package:assessment/common/constants.dart';
import 'package:assessment/futures/auth/views/widgets/logo_and_title.dart';
import 'package:assessment/futures/auth/views/widgets/pass_update_sheet.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinConfirmationScreen extends StatefulWidget {
  const PinConfirmationScreen({super.key});

  @override
  State<PinConfirmationScreen> createState() => _PinConfirmationScreenState();
}

class _PinConfirmationScreenState extends State<PinConfirmationScreen> {
  final TextEditingController _pinTEController = TextEditingController();

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
                title: 'PIN Confirmation',
                subtitle: 'Please, your profile PIN Code for the security.',
              ),
              SizedBox(height: size.height * 0.032),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44.0),
                child: PinCodeTextField(
                  controller: _pinTEController,
                  backgroundColor: Colors.transparent,
                  appContext: (context),
                  length: 4,
                  obscureText: true,
                  obscuringCharacter: 'X',
                  pinTheme: PinTheme(
                    fieldWidth: size.width > 400 ? 60 : 50,
                    fieldHeight: size.height > 400 ? 60 : 50,
                    activeFillColor: Colors.transparent,
                    selectedFillColor: Colors.transparent,
                    inactiveFillColor: Colors.transparent,
                    inactiveColor: pinFieldColors,
                    selectedColor: Colors.black,
                    activeColor: pinFieldColors,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enableActiveFill: true,
                ),
              ),
              SizedBox(height: size.height * 0.032),
              ElevatedButton(
                  onPressed: _updatePassBottomSheet,
                  child: const Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }

  void _updatePassBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return const PassUpdateSheet();
        });
  }

  @override
  void dispose() {
    _pinTEController.dispose();
    super.dispose();
  }
}
