const mongoose=require("mongoose");

var userchatSchema= new mongoose.Schema({
    user_name: String



});

mongoose.model('userchat',userchatSchema);