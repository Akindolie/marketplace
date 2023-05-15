import 'package:flutter/material.dart';
import 'package:marketplace/ui/common/app_colors.dart';

class UnorderedList extends StatelessWidget {
  const UnorderedList(this.texts, {super.key, this.extraNonListText});
  final List<String> texts;
  final String? extraNonListText;

  @override
  Widget build(BuildContext context) {
    var widgetList = <Widget>[];
    for (var text in texts) {
      // Add list item
      widgetList.add(UnorderedListItem(text));
      // Add space between items
      widgetList.add(const SizedBox(height: 5.0));
    }
    if (extraNonListText != null) {
      widgetList.add(const SizedBox(height: 20.0));
      widgetList.add(Text(extraNonListText!,
          style: const TextStyle(color: kcSemiMediumGrey, fontSize: 14)));
    }
    return Column(children: widgetList);
  }
}

class UnorderedListItem extends StatelessWidget {
  const UnorderedListItem(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text("• "),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: kcSemiMediumGrey, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
