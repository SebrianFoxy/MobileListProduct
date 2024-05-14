part of '../ui.dart';

class DoneProductButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? enableButton;

  DoneProductButton(
      {super.key,
        this.onPressed,
        this.enableButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(Icons.done),
        color: Colors.black,
      ),
    );
  }
}
