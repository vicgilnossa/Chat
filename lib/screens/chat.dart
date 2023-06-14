import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const _ChatAppBar(),
        const _ChatBackground(),
        const _ChatContent(),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            color: Colors.white,
          ),
          margin: const EdgeInsets.only(top: 590),
          width: double.infinity,
          height: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 10),
                child: Image(image: AssetImage("assets/emojis-icon.png")),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(34)),
                margin: const EdgeInsets.only(top: 10),
                height: 38,
                width: 310,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child:
                          Image(image: AssetImage("assets/picture-icon.png")),
                    ),
                    chatInputField(),
                    GestureDetector(
                        onTap: () {},
                        child: const Image(
                            image: AssetImage("assets/send-purple-icon.png")))
                  ],
                ),
              )
            ],
          ),
        )
      ]),
    );
  }

  _handleSubmit(String texto) {
    _textController.clear();
    _focusNode.requestFocus;
    print(texto);
  }

  chatInputField() {
    return Container(
        margin: EdgeInsets.only(left: 8, right: 30),
        height: 20,
        width: 200,
        child: TextField(
          onSubmitted: _handleSubmit,
          focusNode: _focusNode,
          cursorColor: Color(0xff884DFF),
          controller: _textController,
          decoration: InputDecoration.collapsed(
              hintText: "Type text",
              hintStyle: GoogleFonts.inter(fontSize: 14, color: Colors.black)),
        ));
  }
}

class _ChatContent extends StatelessWidget {
  const _ChatContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 130),
      width: 67,
      height: 430,
      color: Colors.red,
      child: Column(
        children: [
          Flexible(
              child: ListView.builder(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (_, index) => Text('$index'),
          )),
        ],
      ),
    );
  }
}

class _ChatBackground extends StatelessWidget {
  const _ChatBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.only(top: 100),
        child: Image(
            fit: BoxFit.cover,
            image: AssetImage("assets/chat-background.png")));
  }
}

class _ChatAppBar extends StatelessWidget {
  const _ChatAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      color: Colors.white,
      child: Row(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              height: 54,
              child: Image(image: AssetImage("assets/arrow-left.png")),
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 5,
            child: Container(
              height: 54,
              child: Row(
                children: [
                  CircleAvatar(),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Melisa Melano",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Row(
                          children: [
                            Image(image: AssetImage("assets/online-icon.png")),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Online",
                              style: Theme.of(context).textTheme.bodySmall,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: Container(
                height: 54,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, left: 16, bottom: 8, right: 16),
                      child: Image(image: AssetImage("assets/call-icon.png")),
                    ),
                    Image(image: AssetImage("assets/video-icon.png"))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
