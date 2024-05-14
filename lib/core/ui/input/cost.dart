part of '../ui.dart';

class EnterCost extends StatelessWidget {
  final TextFormField? textFormField;
  final void Function(String) onChanged;
  final String? labelText;
  final String? hintText;
  final String? errorText;

  const EnterCost(
      {
        super.key,
        this.textFormField,
        this.errorText,
        required this.onChanged,
        this.labelText,
        this.hintText
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        width: 120,
        child: TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: "Цена",
            errorText: errorText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
