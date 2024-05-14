part of '../ui.dart';

class CreatButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool? enableButton;

  CreatButton(
      {super.key,
        required this.text,
        this.onPressed,
        this.enableButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<ListBloc>().add(ListEvent.addList(
            listName: context.read<ListBloc>().state.listName));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightGreen[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),);
  }
}
