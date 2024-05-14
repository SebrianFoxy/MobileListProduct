part of '../ui.dart';

class EnterName extends StatelessWidget {
  final TextFormField? textFormField;
  final void Function(String) onChanged;
  final String labelText;
  final String hintText;
  final String? errorText;

  const EnterName(
      {
        super.key,
        this.textFormField,
        this.errorText,
        required this.onChanged,
        required this.labelText,
        required this.hintText
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
