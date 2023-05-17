import 'package:flutter/material.dart';

class SourceWidget extends StatelessWidget {
  const SourceWidget({super.key, required this.title, required this.children});

  final List<Widget> children;
  final String title;

  @override
  build(BuildContext context) {
    final theme = Theme.of(context);
    final text = theme.textTheme.displayLarge?.copyWith(
      color: theme.primaryColor,
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      width: 200,
      color: theme.primaryColorLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 25, left: 6),
            child: Text(title, style: text),
          ),
          ...children,
        ],
      ),
    );
  }
}

class SourceButton extends StatelessWidget {
  const SourceButton({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.action,
  });
  final IconData icon;
  final String label;
  final bool selected;
  final Function action;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final radius = BorderRadius.circular(6);
    final background = selected ? theme.primaryColor : theme.primaryColorLight;
    final foreground = selected ? Colors.white : theme.primaryColor;
    final text = theme.textTheme.labelLarge?.copyWith(color: foreground);

    return Container(
      height: 42,
      margin: const EdgeInsets.only(bottom: 5),
      child: Material(
        color: background,
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          // ignore: unnecessary_lambdas
          onTap: () => action(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 11),
                  child: Icon(icon, color: foreground, size: 18),
                ),
                Text(label, style: text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
