class MsgModel {
  String msg;
  String sender;
  String send_time;
  String id_room;
  MsgModel({required this.msg ,  required this.sender,   required this.send_time, required this.id_room});
}
 
 // once i have the user_name i wont need the type nor the user_id anymore 
 // I need to have the same model as the backend, the sender, the room in which the message was sent, the time and the message itself 
 // the user_name will be stocked in the sucket which will make things even easier 