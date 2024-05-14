part of '../ui.dart';

class BackeButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? enableButton;

  BackeButton(
      {super.key,
        this.onPressed,
        this.enableButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: IconButton(
        onPressed: () {
          Navigator.popAndPushNamed(context, '/list');
        },
        icon: Icon(Icons.arrow_back_ios_sharp),
        color: Colors.black,
      ),
    );
  }
}
