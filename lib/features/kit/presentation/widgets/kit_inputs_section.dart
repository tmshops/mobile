import 'package:flutter/material.dart';

import '../../../../core/widgets/widgets.dart';
import 'kit_samples.dart';
import 'kit_section.dart';

/// Text, phone, OTP and search fields.
class KitInputsSection extends StatefulWidget {
  const KitInputsSection({super.key});

  @override
  State<KitInputsSection> createState() => _KitInputsSectionState();
}

class _KitInputsSectionState extends State<KitInputsSection> {
  /// Any code except this one shakes the boxes, to preview the error state.
  static const _demoCode = '1234';

  bool _hasOtpError = false;

  @override
  Widget build(BuildContext context) {
    final s = KitSamples.of(context);
    return KitSection(
      title: 'Inputs',
      children: [
        AppTextField(label: s.nameLabel, hint: s.nameHint),
        AppTextField(
          label: s.nameLabel,
          hint: s.nameHint,
          errorText: s.requiredError,
        ),
        AppTextField(label: s.nameLabel, hint: s.nameHint, isEnabled: false),
        AppTextField(
          label: s.commentLabel,
          minLines: 2,
          maxLines: 5,
          maxLength: 500,
        ),
        const PhoneField(),
        const KitLabel(
          'OtpField · type 1234 for success, anything else shakes',
        ),
        OtpField(
          autofocus: false,
          hasError: _hasOtpError,
          onChanged: (_) {
            if (_hasOtpError) setState(() => _hasOtpError = false);
          },
          onCompleted: (code) =>
              setState(() => _hasOtpError = code != _demoCode),
        ),
        if (_hasOtpError) KitLabel(s.wrongCode),
        AppSearchBar(onCameraTap: () {}),
      ],
    );
  }
}
