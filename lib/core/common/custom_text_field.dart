import 'package:zync_gum/core/extensions/build_context_extension.dart';
import 'package:zync_gum/core/extensions/padding_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.textEditingController,
    this.onChange,
    this.maxLines = 1,
    this.minLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.obscure,
    this.textInputAction,
    this.fillColor,
    this.initialValue,
    this.preIconColor,
    this.readOnly = false,
    this.onTap,
    this.formatter,
    this.maxLength,
    this.focusNode,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.textCapitalization = TextCapitalization.none,
    this.prefixText = "",
    this.label = "",
  });

  final TextEditingController? textEditingController;
  final Function(String value)? onChange;
  final String hintText;
  final String? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscure;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final Color? fillColor;
  final Color? preIconColor;
  final String? initialValue;
  final FormFieldValidator<String>? validator;
  final int? maxLines;
  final TextInputType textInputType;
  final int? minLines;
  final int? maxLength;
  final FocusNode? focusNode;
  final Function()? onTap;
  final List<TextInputFormatter>? formatter;
  final AutovalidateMode autoValidateMode;
  final TextCapitalization textCapitalization;
  final String prefixText;
  final String label;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late TextEditingController _controller;
  late bool _isControllerOwned;
  bool _obscureText = true;

  void _onTextChanged() {
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _isControllerOwned = widget.textEditingController == null;
    _controller = widget.textEditingController ??
        TextEditingController(text: widget.initialValue);
    _controller.addListener(_onTextChanged);
    _obscureText = widget.obscure ?? false;
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    if (_isControllerOwned) _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isNotEmpty = _controller.text.isNotEmpty;
    final Color bgColor = widget.fillColor ?? 
        (isNotEmpty 
            ? (context.isDarkMode ? Colors.white.withValues(alpha: 0.08) : Colors.grey.withValues(alpha: 0.3)) 
            : context.colorScheme.surfaceContainerHighest);

    final Color primaryColor = context.colorScheme.primary;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label.isNotEmpty)
          Text(
            widget.label, 
            style: context.textStyle.manrope12w400.copyWith(
              color: context.colorScheme.onSurface.withValues(alpha: 0.7),
            )
          ).paddingOnly(bottom: 8),
          
        TextFormField(
          controller: _controller,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          validator: widget.validator,
          readOnly: widget.readOnly,
          focusNode: widget.focusNode,
          inputFormatters: widget.formatter,
          onTap: widget.onTap,
          style: context.textStyle.manrope12w400.copyWith(
            color: context.colorScheme.onSurface,
            fontSize: 15,
          ),
          obscureText: _obscureText,
          textInputAction: widget.textInputAction,
          keyboardType: widget.textInputType,
          onChanged: widget.onChange,
          cursorColor: primaryColor,
          maxLength: widget.maxLength,
          autovalidateMode: widget.autoValidateMode,
          textCapitalization: widget.textCapitalization,
          decoration: InputDecoration(
            prefixText: isNotEmpty ? widget.prefixText : null,
            prefixStyle: context.textStyle.manrope12w400,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            counterText: '',

            prefixIcon: widget.prefixIcon == null
                ? null
                : Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(
                      widget.prefixIcon!,
                      colorFilter: ColorFilter.mode(
                        widget.preIconColor ?? (isNotEmpty ? primaryColor : context.colorScheme.secondary),
                        BlendMode.srcIn,
                      ),
                      width: 20,
                      height: 20,
                    ),
                  ),

            suffixIcon: widget.obscure == true
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                      color: context.colorScheme.onSurface.withValues(alpha: 0.5),
                      size: 22,
                    ),
                    onPressed: () => setState(() => _obscureText = !_obscureText),
                  )
                : widget.suffixIcon,

            hintText: widget.hintText,
            hintStyle: context.textStyle.manrope12w400.copyWith(
              color: context.colorScheme.secondary.withValues(alpha: 0.5),
              fontSize: 15,
            ),
            
            errorStyle: context.textStyle.manrope12w400.copyWith(
              fontSize: 12,
              color: context.colorScheme.error,
            ),
            
            filled: true,
            fillColor: bgColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: isNotEmpty 
                    ? context.colorScheme.outline.withValues(alpha: 0.5) 
                    : context.colorScheme.outline.withValues(alpha: 0.2),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: primaryColor,
                width: 1.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: context.colorScheme.error.withValues(alpha: 0.5),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: context.colorScheme.error,
                width: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}