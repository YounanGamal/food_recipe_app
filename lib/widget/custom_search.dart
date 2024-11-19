import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
    required this.readOnly,
    this.onTapTextField,
    this.onTapFilter,
    required this.paddingTop,
    this.paddingLeft=0,
  });

  final bool readOnly;
  final VoidCallback? onTapTextField;
  final VoidCallback? onTapFilter;
  final double paddingTop;
  final double paddingLeft;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(left: paddingLeft, right: 30, top: paddingTop),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    readOnly: readOnly,
                    onTap: onTapTextField,
                    decoration: InputDecoration(
                        hintText: 'Search recipe',
                        hintStyle: const TextStyle(
                          color: Color(0xffD9D9D9),
                          fontSize: 11
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0xffD9D9D9),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffD9D9D9)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Color(0xffD9D9D9)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.only(top: 2)),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: onTapFilter,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff129575),
                ),
                child: Image.asset('assets/icons/filter.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
