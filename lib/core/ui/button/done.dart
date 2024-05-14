part of '../ui.dart';

class DoneButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final bool? enableButton;

  DoneButton(
      {super.key,
        this.text,
        this.onPressed,
        this.enableButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: FloatingActionButton(
          onPressed: onPressed,
          elevation: 5,
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.done)),
    );
  }
}
