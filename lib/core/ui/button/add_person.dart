part of '../ui.dart';

class AddPersonButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? enableButton;

  const AddPersonButton({
    Key? key,
    this.onPressed,
    this.enableButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _PersonButtonContent(
      onPressed: onPressed,
    );
  }
}

class _PersonButtonContent extends StatefulWidget {
  final VoidCallback? onPressed;

  const _PersonButtonContent({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  _PersonButtonContentState createState() => _PersonButtonContentState();
}

class _PersonButtonContentState extends State<_PersonButtonContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: PopupMenuButton(
        onOpened: () {
          if (widget.onPressed != null) {
            widget.onPressed!();
          }
        },
        icon: const Icon(Icons.person_add_alt_1),
        color: Colors.white,
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
            child: TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/login');
              },
              child: TextWidget(
                text: 'Войти в другой аккаунт',
                color: Colors.green,
                fontSize: 14,
              ),
            ),
            value: 1,
          ),
          PopupMenuItem(
            child: TextWidget(
                text: 'Ваш токен: ${context.read<ListBloc>().state.token}',
                color: Colors.black,
                fontSize: 14,
              ),
            value: 2,
          ),
        ],
      ),
    );
  }
}
