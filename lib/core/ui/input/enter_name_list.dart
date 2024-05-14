part of '../ui.dart';

class EnterNameList extends StatelessWidget {
  final TextFormField? textFormField;
  final void Function(String) onChanged;
  final String? labelText;
  final String hintText;
  final String? errorText;
  final TextEditingController? controller;

  const EnterNameList(
      {
        super.key,
        this.textFormField,
        this.errorText,
        this.controller,
        required this.onChanged,
        this.labelText,
        required this.hintText
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
