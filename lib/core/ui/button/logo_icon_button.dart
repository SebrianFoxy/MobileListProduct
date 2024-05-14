part of '../ui.dart';

class LogoIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? enableButton;

  LogoIconButton(
      {super.key,
        this.onPressed,
        this.enableButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 70,
      child: IconButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, '/list');
        },
        icon: Image.asset("assets/images/Logo.png"),
      ),
    );
  }
}
