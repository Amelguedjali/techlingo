import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:techlingo/pages/HomePage.dart';
import 'package:techlingo/pages/OtherMessageWidget.dart';
import 'package:techlingo/pages/OwnMessageWidget.dart';
import 'package:techlingo/pages/Widgets.dart';
import 'package:techlingo/pages/msg_model.dart';
import 'package:techlingo/constant.dart';
import 'package:techlingo/pages/msg_model.dart';
import 'package:getwidget/getwidget.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:techlingo/pages/OwnMessageWidget.dart';
import 'package:techlingo/pages/OtherMessageWidget.dart';
import 'package:intl/intl.dart';

class ChatRoomAI extends StatefulWidget {
  // once you have the user name, userId won't be needed anymore
  final String user_name;
  const ChatRoomAI({Key? key, required this.user_name}) : super(key: key);
  @override
  State<ChatRoomAI> createState() => _ChatRoomAIState();
}

class _ChatRoomAIState extends State<ChatRoomAI> {
  // now pour afficher l'heure de l'envoi de chaque message
  var now = DateTime.now();
  IO.Socket? socket;
  // une liste pour stocker les messages avant de les trier afin de les afficher
  List<MsgModel> listMsg = [];
  TextEditingController _msgcontroller = TextEditingController();
  @override
  void initState() {
    // implement initState
    super.initState();
    connect();
  }

  void connect() {
    socket = IO.io("http://localhost:3000", <String, dynamic>{
      "transports": ["websocket"],
      "autoConnect": false,
    });
    socket!.connect();

    // on va envoyer le user_name au backend pour l'enregister dans la base de données

    socket!.onConnect((_) {
      print("connected into frontend ");
      // i need to get the user_name from the home page and send it to the backend
      socket!.emit("user_name", widget.user_name);
      // loading old messages
      socket!.on(
          "oldmessages",
          (messages) => {
                print(messages),
                for (var i = 0; i < messages.length; i++)
                  {
                    setState(() {
                      listMsg.add(
                        MsgModel(
                            msg: messages[i]["msg"],
                            sender: messages[i]["sender"],
                            send_time: messages[i]["send_time"],
                            id_room: messages[i]["id_room"]),
                      );
                    }),
                  }
              });

      socket!.on("sendMsgServer", (msg) {
        if (msg["sender"] != widget.user_name) {
          if (!mounted) {
            return;
          }
          setState(() {
            listMsg.add(
              MsgModel(
                  msg: msg["msg"],
                  sender: msg["sender"],
                  send_time: msg["send_time"],
                  id_room: msg["id_room"]),
            );
          });
        }
        ;
      });
    });

    socket!.onReconnect((_) {
      print("connected into frontend ");
      // i need to get the user_name from the home page and send it to the backend
      socket!.emit("user_name", widget.user_name);
      // loading old messages
      socket!.on(
          "oldmessages",
          (messages) => {
                print(messages),
                for (var i = 0; i < messages.length; i++)
                  {
                    setState(() {
                      listMsg.add(
                        MsgModel(
                            msg: messages[i]["msg"],
                            sender: messages[i]["sender"],
                            send_time: messages[i]["send_time"],
                            id_room: messages[i]["id_room"]),
                      );
                    }),
                  }
              });

      socket!.on("sendMsgServer", (msg) {
        if (msg["sender"] != widget.user_name) {
          if (!mounted) {
            return;
          }
          setState(() {
            listMsg.add(
              MsgModel(
                  msg: msg["msg"],
                  sender: msg["sender"],
                  send_time: msg["send_time"],
                  id_room: msg["id_room"]),
            );
          });
        }
        ;
      });
    });
  }

  void sendMsg(String msg, String sender) {
    // ownMsg is a variable
    MsgModel ownMsg = MsgModel(
        msg: msg,
        sender: sender,
        send_time: DateFormat.Hm().format(DateTime.now()),
        id_room: "AI");
    listMsg.add(ownMsg);
    setState(() {
      listMsg;
    });
    socket!.emit(
      'sendMsg',
      {
        "msg": msg,
        "sender": widget.user_name, // sender is the user_name
        "send_time": DateFormat.Hm().format(DateTime.now()),
        "id_room": "AI",
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    socket!.disconnect();
                    // });
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/Ai.png"),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AI",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                      SizedBox(height: 0),
                      Text(
                        "20 Online",
                        style: TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 140,
              child: ListView.builder(
                itemCount: listMsg.length,
                itemBuilder: (context, index) {
                  // and here i need to modify the condition and make it according to the sender
                  if (listMsg[index].sender == widget.user_name) {
                    return buildOwnMessagee(
                        msg: listMsg[index].msg,
                        sender: listMsg[index].sender,
                        time: listMsg[index].send_time);
                  } else {
                    return buildOtherMessagee(
                        msg: listMsg[index].msg,
                        sender: listMsg[index].sender,
                        time: listMsg[index].send_time);
                  }
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    child: Card(
                      margin: EdgeInsets.only(left: 10, right: 2, bottom: 6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
