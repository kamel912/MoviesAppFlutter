import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class RadioModalBottomSheet<T> extends StatelessWidget {
  const RadioModalBottomSheet({
    Key? key,
    required this.stateNotifier,
    required this.items,
    required this.title,
    this.onChanged,
  }) : super(key: key);
  final StateNotifier<T> stateNotifier;
  final List<T> items;
  final String title;

  final ValueChanged<T?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StateNotifierBuilder<T>(
        stateNotifier: stateNotifier,
        builder: (context, state, child) {
          return ListView.builder(
            itemCount: items.length + 1,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                );
              } else {
                T item = items[index - 1];
                return RadioListTile<T>(
                  value: item,
                  groupValue: state,
                  onChanged: onChanged,
                  title: Text('item'),
                );
              }
            },
          );
        },
      ),
    );
  }
}
