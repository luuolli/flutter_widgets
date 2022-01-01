import 'package:flutter/material.dart';

class LCreditCard extends StatelessWidget {
  final String holderName;
  final String cardNumber;
  final String labelValidThru;
  final String validThru;
  final String labelCvv;
  final String cvv;
  final Widget? headerWidget;
  final Widget? bottomWidget;
  final Gradient? backgroundGradient;

  const LCreditCard({
    Key? key,
    required this.holderName,
    required this.cardNumber,
    required this.labelValidThru,
    required this.validThru,
    required this.labelCvv,
    required this.cvv,
    this.headerWidget,
    this.bottomWidget,
    this.backgroundGradient,
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
        minHeight: 220,
      ),
      decoration: BoxDecoration(
        gradient: backgroundGradient ??
            const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.blueAccent,
                Colors.lightBlue,
                Colors.blueGrey,
              ],
            ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                holderName,
                style: _theme.textTheme.bodyText2,
              ),
              if (headerWidget != null) headerWidget!,
            ],
          ),
          Text(
            cardNumber,
            style: _theme.textTheme.headline6?.copyWith(
              letterSpacing: 5,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    labelValidThru,
                    style: _theme.textTheme.caption,
                  ),
                  Text(
                    validThru,
                    style: _theme.textTheme.subtitle2,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'cvv',
                    style: _theme.textTheme.caption,
                  ),
                  Text(
                    '123',
                    style: _theme.textTheme.subtitle2,
                  ),
                ],
              ),
              if (bottomWidget != null) bottomWidget!,
            ],
          ),
        ],
      ),
    );
  }
}
