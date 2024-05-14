part of '../ui.dart';

class JoinButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? enableButton;

  JoinButton(
      {super.key, required this.text, this.onPressed, this.enableButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightGreen[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
