part of '../ui.dart';

class CurrentListButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isActive; // Добавляем состояние isActive

  const CurrentListButton({
    Key? key,
    this.onPressed,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: IconButton(
        onPressed: isActive
            ? null
            : () {
          Navigator.popAndPushNamed(context, '/list');
        },
        icon: Icon(Icons.edit_note_outlined),
        color: isActive ? Colors.black : Colors.grey, // Изменяем цвет иконки в зависимости от isActive
      ),
    );
  }
}