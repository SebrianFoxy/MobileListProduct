part of '../ui.dart';

class AddShopButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? enableButton;

  AddShopButton(
      {super.key,
        this.onPressed,
        this.enableButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: FloatingActionButton(
          onPressed: onPressed,
          elevation: 5,
          backgroundColor: Colors.lightGreen[400],
          child: Icon(Icons.add)),
    );
  }
}
