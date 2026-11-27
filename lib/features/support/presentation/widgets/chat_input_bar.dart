import 'package:flutter/material.dart';

import '../../../../core/l10n/l10n.dart';
import '../../../../core/theme/theme.dart';

/// Chat input (UI_DESIGN §7.22): «+», a field that grows to [_maxLines],
/// and a send button that turns orange once there is text.
class ChatInputBar extends StatefulWidget {
  const ChatInputBar({required this.onAttach, required this.onSend, super.key});

  final VoidCallback onAttach;
  final ValueChanged<String> onSend;

  @override
  State<ChatInputBar> createState() => _ChatInputBarState();
}

class _ChatInputBarState extends State<ChatInputBar> {
  final _controller = TextEditingController();

  static const int _maxLines = 5;

  bool get _hasText => _controller.text.trim().isNotEmpty;

  @override
  void initState() {
    super.initState();
    // Only the send button's colour depends on the text.
    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _send() {
    if (!_hasText) return;
    widget.onSend(_controller.text.trim());
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final c = context.colors;
    return Material(
      color: c.background,
      child: SafeArea(
        top: false,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: c.divider)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.x8,
              vertical: AppSpacing.x8,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(AppIcons.plus),
                  tooltip: l10n.chatAttach,
                  onPressed: widget.onAttach,
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    minLines: 1,
                    maxLines: _maxLines,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.multiline,
                    style: context.text.body,
                    decoration: InputDecoration(
                      hintText: l10n.chatInputHint,
                      filled: true,
                      fillColor: c.surface,
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSpacing.x16,
                        vertical: AppSpacing.x12,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: AppRadii.chipBorder,
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: AppRadii.chipBorder,
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: AppRadii.chipBorder,
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.x4),
                IconButton(
                  icon: const Icon(AppIcons.send),
                  tooltip: l10n.chatSend,
                  color: c.primary,
                  disabledColor: c.inkTertiary,
                  onPressed: _hasText ? _send : null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
