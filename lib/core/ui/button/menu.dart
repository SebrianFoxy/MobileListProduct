part of '../ui.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final bool? enableButton;

  const MenuButton({
    Key? key,
    this.onPressed,
    this.enableButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MenuButtonContent(
      onPressed: onPressed,
    );
  }
}

class _MenuButtonContent extends StatefulWidget {
  final VoidCallback? onPressed;

  const _MenuButtonContent({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  _MenuButtonContentState createState() => _MenuButtonContentState();
}

class _MenuButtonContentState extends State<_MenuButtonContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: PopupMenuButton(
        onOpened: () {
          // Handle onPressed if needed
          if (widget.onPressed != null) {
            widget.onPressed!();
          }
        },
        icon: Icon(Icons.more_horiz),
        color: Colors.white,
        itemBuilder: (BuildContext context) => [
          PopupMenuItem(
            child: TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/login');
              },
              child: TextWidget(
                text: 'Логин',
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            value: 1,
          ),
          PopupMenuItem(
            child: TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, '/story');
              },
              child: TextWidget(
                text: 'История',
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            value: 2,
          ),
          PopupMenuItem(
            child: TextButton(
              onPressed: () {
                //Navigator.popAndPushNamed(context, '/story');
              },
              child: TextWidget(
                text: 'О проекте',
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            value: 3,
          ),
        ],
      ),
    );
  }
}
