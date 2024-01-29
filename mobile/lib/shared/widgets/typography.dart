import 'package:flutter/material.dart';

enum TextVariant {
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
}

///
/// Typography widget
/// 1. heading large
/// 2. heading medium
/// 3. heading small
/// 4. title large
/// 5.
class AppText extends StatelessWidget {
  const AppText(
    this.label, {
    super.key,
    this.variant = TextVariant.headlineLarge,
    this.color,
    this.softWrap = true,
    this.textAlign,
    this.style,
    this.fontWeight,
  });

  final TextVariant? variant;
  final String label;
  final Color? color;
  final bool? softWrap;
  final TextAlign? textAlign;
  final TextStyle? style;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return switch (variant) {
      TextVariant.headlineLarge => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.headlineLarge!.copyWith(
            color: color!,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.headlineMedium => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.headlineMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.headlineSmall => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.headlineSmall!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.titleLarge => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.titleLarge!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.titleMedium => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.titleMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.titleSmall => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.titleSmall!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.bodyLarge => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.bodyLarge!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.bodyMedium => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.bodyMedium!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      TextVariant.bodySmall => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: text.bodySmall!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
        ),
      _ => Text(
          label,
          textAlign: textAlign,
          softWrap: softWrap,
          style: style!,
        )
    };
  }
}
