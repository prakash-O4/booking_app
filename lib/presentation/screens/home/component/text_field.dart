import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;
  final IconData prefixIcon;
  final VoidCallback? onPressed;
  final VoidCallback? onTap;
  final bool isSuffix;
  const SearchField(
      {required this.hintText,
      required this.prefixIcon,
      required this.isSuffix,
      this.suffixIcon,
      this.onPressed,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      cursorColor: Color(0xFF9C9C9C),
      style: GoogleFonts.montserrat(
        textStyle: TextStyle(
          fontSize: 12,
          color: Color(0xFF9C9C9C),
          fontStyle: FontStyle.italic,
        ),
      ),
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 12,
            color: Color(0xFF9C9C9C),
            fontStyle: FontStyle.italic,
          ),
        ),
        filled: true,
        fillColor: Color(0xFFF4F4F4),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
          ),
          child: Icon(
            prefixIcon,
            size: 25,
            color: Colors.black,
          ),
        ),
        suffixIcon: isSuffix
            ? Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 10,
                ),
                child: IconButton(
                  onPressed: onPressed,
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(
                        suffixIcon,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            : Container(
                width: 0,
              ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
