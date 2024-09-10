import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    required this.images,
    required this.title,
    required this.price,
    required this.onTab,
    super.key,
  });

  final String title;
  final String images;
  final String price;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(13),
        ),
        border: Border.all(
          color: const Color(0xffC8C8C8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(images),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color(
                              0xff333333,
                            ),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Color(
                              0xff079D49,
                            ),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onTab,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0XFFF8774A),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
