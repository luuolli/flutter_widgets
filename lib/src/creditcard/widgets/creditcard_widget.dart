import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LCreditCard extends StatelessWidget {
  final VoidCallback? onMainAction;
  final VoidCallback? onSecondaryAction;

  const LCreditCard({
    Key? key,
    this.onMainAction,
    this.onSecondaryAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(20),
      constraints: const BoxConstraints(
        maxWidth: 380,
        minWidth: 380,
        minHeight: 200,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.deepPurple,
            Colors.deepPurpleAccent,
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Flag card',
                style: _theme.textTheme.bodyText2,
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                child: const Text('trocar'),
                onPressed: () {},
              ),
            ],
          ),
          ...[
            const SizedBox(height: 20),
            Text(
              'Holder name',
              style: _theme.textTheme.bodyText1,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '**** **** **** 1234',
                  style: _theme.textTheme.headline6,
                ),
                Text(
                  'mm/aa',
                  style: _theme.textTheme.subtitle2,
                ),
              ],
            ),
          ],
          if (true) ...[
            const SizedBox(height: 15),
            SizedBox(
              width: double.maxFinite,
              child: CupertinoButton.filled(
                child: const Text(
                  'Add new credit card',
                ),
                onPressed: () {},
              ),
            ),
          ]
        ],
      ),
    );
  }
}
