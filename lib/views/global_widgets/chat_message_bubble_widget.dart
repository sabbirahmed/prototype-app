import 'package:animate_do/animate_do.dart';
import 'package:demo_ecom/views/support_chat/support_chat_v.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatMessageBubble extends StatelessWidget {
  ChatMessageBubble({
    Key? key,
    required this.isCurrentUser,
    required this.chatModel,
  }) : super(key: key);

  bool isCurrentUser;
  DummyChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    BorderRadius borderRadius = BorderRadius.only(
      topLeft: isCurrentUser ? const Radius.circular(12) : const Radius.circular(0),
      bottomLeft: const Radius.circular(12),
      topRight: const Radius.circular(12),
      bottomRight: isCurrentUser ? const Radius.circular(0) : const Radius.circular(12),
    );
    return FadeIn(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isCurrentUser
                  ? const SizedBox.shrink()
                  : CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.8),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
              isCurrentUser ? const SizedBox.shrink() : const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    isCurrentUser ? const SizedBox.shrink() : const Gap(1),
                    isCurrentUser
                        ? const SizedBox()
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  isCurrentUser ? "John Doe" : "Suppot",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ),
                    Material(
                      elevation: 6,
                      shadowColor: Colors.black.withOpacity(.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadius,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(borderRadius: borderRadius, color: Colors.grey.withOpacity(.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chatModel.message,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
                              children: [
                                Text(
                                  timeago.format(DateTime.now()),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
