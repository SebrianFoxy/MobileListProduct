part of '../ui.dart';

class StoryListButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool isActive; // Добавляем состояние isActive

  const StoryListButton({
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
          Navigator.popAndPushNamed(context, '/story');
        },
        icon: Icon(Icons.archive_outlined),
        color: isActive ? Colors.black : Colors.grey, // Изменяем цвет иконки в зависимости от isActive
      ),
    );
  }
}
