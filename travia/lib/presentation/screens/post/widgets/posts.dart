import 'package:flutter/material.dart';
import 'package:travia/global/colors.dart';

class PostLayoutWidget extends StatelessWidget {
  const PostLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: size.width,
            decoration: BoxDecoration(
              color: GlobalColors.kWhite,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Container(
                    height: size.height / 2.46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1549877452-9c387954fbc2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 14, bottom: 22),
                  child: Text(
                    "what a historical place, i feels very blessy to visit this aazing place, if you have chance really to visit this historical beauty !,",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 5,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: GlobalColors.kWhite,
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1517508333572-d5c2f6cee0a6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 4,
                  left: 8,
                ),
                child: Text(
                  "jaimy",
                  style: TextStyle(
                      color: GlobalColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
