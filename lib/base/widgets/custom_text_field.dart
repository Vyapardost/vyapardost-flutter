import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vyapardost_flutter/constants/color_constants.dart';

import '../../constants/text_themes_constants.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.length,
      this.onTap,
      this.labelText,
      this.helperText,
      this.onSaved,
      this.validator,
      this.preFilledValue,
      this.onFieldSubmitted,
      this.readOnly = false,
      this.onChanged,
      this.keyboardType,
      this.inputFormatters,
      this.textInputAction,
      this.enabled = true,
      this.textSize,
      this.errorText,
      this.maxLines = 1,
      this.textCapitalization,
      this.borderRadius = 4,
      this.borderColor = primaryColor,
      this.focusedBorderColor = primaryColor,
      this.enabledBorderColor = primaryColor,
      this.onEditingComplete,
      this.focusNode,
      this.iconButton})
      : super(key: key);
  final TextEditingController controller;
  final String? hintText, labelText, helperText, preFilledValue, errorText;
  final TextInputAction? textInputAction;
  final int? length, maxLines;
  final VoidCallback? onTap;
  final void Function(String?)? onSaved;
  final String Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final VoidCallback? onEditingComplete;
  final bool readOnly, enabled;
  final double? textSize;
  final void Function(String?)? onChanged;
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final double? borderRadius;
  final Color? borderColor, focusedBorderColor, enabledBorderColor;
  final FocusNode? focusNode;
  final IconButton? iconButton;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        focusNode: widget.focusNode,
        controller: widget.controller,
        onTap: widget.onTap,
        onSaved: widget.onSaved,
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        onEditingComplete: widget.onEditingComplete,
        onChanged: widget.onChanged,
        initialValue: widget.preFilledValue,
        enabled: widget.enabled,
        readOnly: widget.readOnly,
        maxLength: widget.length,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.inputFormatters,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        style: textFieldBody,
        decoration: InputDecoration(
            suffixIcon: widget.iconButton,
            isDense: true,
            counterText: '',
            focusedBorder: borderOutline(),
            border: borderOutline(),
            enabledBorder: borderOutline(),
            errorBorder: borderOutline(error: true),
            focusedErrorBorder: borderOutline(error: true),
            labelStyle: textFieldLabelBody,
            errorStyle: const TextStyle(color: Colors.red, fontSize: 10.0),
            hintText: widget.hintText,
            errorText: widget.errorText,
            hintStyle: textFieldHintBody,
            labelText: widget.labelText,
            helperText: widget.helperText),
        maxLines: widget.maxLines,
        keyboardType: widget.keyboardType);
  }

  OutlineInputBorder borderOutline({bool error = false}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: !error ? primaryColor : secondaryColor),
        borderRadius: const BorderRadius.all(Radius.circular(6)));
  }
}
