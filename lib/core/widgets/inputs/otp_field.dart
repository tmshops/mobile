import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../l10n/l10n.dart';
import '../../theme/theme.dart';

/// 4–6 code boxes backed by one invisible text field.
///
/// One real field (instead of one per box) gives auto-advance, backspace,
/// paste and SMS autofill (`oneTimeCode`) for free. Setting [hasError]
/// shakes the boxes once.
class OtpField extends StatefulWidget {
  const OtpField({
    required this.onCompleted,
    this.length = 4,
    this.onChanged,
    this.hasError = false,
    this.autofocus = true,
    super.key,
  }) : assert(length >= 4 && length <= 6, 'OTP length is 4–6');

  final int length;
  final ValueChanged<String> onCompleted;
  final ValueChanged<String>? onChanged;
  final bool hasError;
  final bool autofocus;

  @override
  State<OtpField> createState() => _OtpFieldState();
}

class _OtpFieldState extends State<OtpField>
    with SingleTickerProviderStateMixin {
  static const double _shakeDistance = 8;
  static const int _shakeWaves = 3;

  final _controller = TextEditingController();
  final _focusNode = FocusNode();
  var _lastCode = '';
  late final AnimationController _shake = AnimationController(
    vsync: this,
    duration: AppMotion.slow,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onTextChanged);
    _focusNode.addListener(() => setState(() {}));
  }

  @override
  void didUpdateWidget(OtpField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.hasError && !oldWidget.hasError) {
      HapticFeedback.mediumImpact();
      if (!AppMotion.isReduced(context)) _shake.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    _shake.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    final code = _controller.text;
    // The listener also fires on cursor moves; react to text changes only.
    if (code == _lastCode) return;
    _lastCode = code;
    setState(() {});
    widget.onChanged?.call(code);
    if (code.length == widget.length) widget.onCompleted(code);
  }

  @override
  Widget build(BuildContext context) {
    final code = _controller.text;
    return Semantics(
      label: context.l10n.otpLabel,
      textField: true,
      child: AnimatedBuilder(
        animation: _shake,
        builder: (context, child) {
          final dx =
              math.sin(_shake.value * math.pi * 2 * _shakeWaves) *
              _shakeDistance *
              (1 - _shake.value);
          return Transform.translate(offset: Offset(dx, 0), child: child);
        },
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < widget.length; i++) ...[
                  if (i > 0) const SizedBox(width: AppSpacing.x8),
                  Flexible(
                    child: _OtpBox(
                      digit: i < code.length ? code[i] : null,
                      isActive: _focusNode.hasFocus && i == code.length,
                      hasError: widget.hasError,
                    ),
                  ),
                ],
              ],
            ),
            // Invisible but hit-testable: taps focus it, long-press pastes.
            Positioned.fill(
              child: Opacity(
                opacity: 0,
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  autofocus: widget.autofocus,
                  keyboardType: TextInputType.number,
                  autofillHints: const [AutofillHints.oneTimeCode],
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(widget.length),
                  ],
                  showCursor: false,
                  decoration: const InputDecoration.collapsed(hintText: null),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OtpBox extends StatelessWidget {
  const _OtpBox({
    required this.digit,
    required this.isActive,
    required this.hasError,
  });

  final String? digit;
  final bool isActive;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    final c = context.colors;
    final borderColor = hasError
        ? c.danger
        : isActive
        ? c.primary
        : Colors.transparent;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: AppSizes.otpBox),
      child: AspectRatio(
        aspectRatio: 1,
        child: AnimatedContainer(
          duration: AppMotion.of(context, AppMotion.fast),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: c.surface,
            borderRadius: AppRadii.inputBorder,
            border: Border.all(color: borderColor, width: AppSizes.inputBorder),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              digit ?? '',
              style: context.text.h1.copyWith(
                fontFeatures: AppTypography.tabularFigures,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
