part of '../ui.dart';

class EnterProduct extends StatelessWidget {
  final TextFormField? textFormField;
  final void Function(String) onChanged;
  final String? labelText;
  final String? hintText;
  final String? errorText;

  const EnterProduct(
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
            hintText: "Введите товар",
            errorText: errorText,
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
