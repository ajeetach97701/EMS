import 'package:flutter/material.dart';

const kFieldSizedBox = SizedBox(
  height: 5,
);
const kNFieldSizedBox = SizedBox(
  height: 15,
);
const kThemeColor = Colors.deepPurple;
const kButtonTextColor = Colors.white;

class EntryField extends StatelessWidget {
  const EntryField({super.key, required this.hText, this.prefixIcon});

  final String? hText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hText,
              prefixIcon: prefixIcon,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText({
    super.key,
    required this.label,
    required this.onPress,
    required this.textColor,
  });

  final String label;
  final VoidCallback? onPress;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      //onHover:
      //onPressed: signupButton,
      onPressed: onPress,
      child: Text(
        label,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
