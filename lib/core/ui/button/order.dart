part of '../ui.dart';

class OrderButton extends StatelessWidget {
  final String text;
  final String data;
  final VoidCallback? onPressed;
  final bool? enableButton;

  OrderButton(
      {super.key, required this.text, required this.data, this.onPressed, this.enableButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amberAccent
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            ),
            TextWidget(text: data, color: Colors.black, fontSize: 16),
          ],
        ),
      ),
    );
  }
}
