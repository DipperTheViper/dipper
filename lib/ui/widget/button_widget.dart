import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.style,
    this.width,
    this.height,
    this.margin,
    this.color = Colors.transparent,
    this.overlay = Colors.transparent,
    this.borderRadius,
    this.border,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;
  final TextStyle? style;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final Color color;
  final Color overlay;
  final double? borderRadius;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: border,
        color: color,
      ),
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              overlayColor: MaterialStateProperty.all<Color>(overlay),
            ),
        child: Text(
          text,
          style: style ?? Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width,
    this.height,
    this.margin,
    this.color = Colors.transparent,
    this.overlay = Colors.transparent,
    this.borderRadius,
    this.border,
  }) : super(key: key);
  final Widget child;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  final Color color;
  final Color overlay;
  final double? borderRadius;
  final Border? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 0),
        border: border,
        color: color,
      ),
      width: width,
      height: height,
      margin: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onPressed,
        style: Theme.of(context).textButtonTheme.style!.copyWith(
              backgroundColor: MaterialStateProperty.all<Color>(color),
              overlayColor: MaterialStateProperty.all<Color>(overlay),
            ),
        child: child,
      ),
    );
  }
}

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
    this.size,
    this.margin,
    this.padding,
    this.color = Colors.transparent,
  }) : super(key: key);
  final Widget child;
  final void Function()? onPressed;
  final double? size;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        width: size,
        height: size,
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
