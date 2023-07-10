import 'package:flutter/material.dart';

import 'center_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      color: Colors.black,
      child: CenterWidget(),
    );
  }
}
