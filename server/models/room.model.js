const mongoose=require("mongoose");

var roomSchema= new mongoose.Schema({

    room_name: String



});

mongoose.model("room", roomSchema);