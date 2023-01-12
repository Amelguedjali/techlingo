const mongoose=require("mongoose");

var messageSchema= new mongoose.Schema({

    id_room:String,
    sender : String,
    send_time: String,
    msg : String,
    


});

mongoose.model('message', messageSchema);