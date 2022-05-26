import 'package:flutter/material.dart';

class ProductHeaderWidget extends StatelessWidget {
  const ProductHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '100 APPAREL',
          style: TextStyle(
            fontFamily: 'Handlee',
            color: Color.fromRGBO(0, 0, 0, 1),
            wordSpacing: 3,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[200],
          child: IconButton(
            onPressed: () {},
            alignment: Alignment.center,
            icon: Icon(
              Icons.filter_list_rounded,
              size: 20,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}
