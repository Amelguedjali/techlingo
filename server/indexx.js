// IMPORTS

const express = require ("express");
const mongoose = require("mongoose");
var http= require("http");
const {Server}= require("socket.io");
const cors = require("cors");

// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");
const wordRouter = require("./routes/word");
const userRouter = require("./routes/user");
const adminRouter = require("./routes/admin");

//using the models that we created 

const ObjectId=mongoose.Types.ObjectId;


// connectiong to the database
// url de la base de données  
const dbUrl="mongodb+srv://mel:1234@users.tywrtcp.mongodb.net/chat?retryWrites=true&w=majority"
const connectionParams = {
    useNewUrlParser : true,
    useUnifiedTopology : true
};
mongoose.set('strictQuery', true);
mongoose
    .connect(dbUrl, connectionParams)
    .then(()=>{
        console.info("connected to the DB")

    })
    .catch((e)=>{
        console.log("error",e);

    });


// utilisation des models qu'on a créé 
require("./models/message.model");
require("./models/room.model");
require("./models/userchat.model");
require("./models/user");
require("./models/word");
var userchat=mongoose.model('userchat');
var room=mongoose.model('room');
var message=mongoose.model('message');
var User=mongoose.model('User');
var word=mongoose.model('Word');


// creation du serveur 
const app=express();
const port = process.env.port || 3000;
var server = http.createServer(app);
//const io = new Server(server);
var io= require("socket.io")(server,{
   cors: 
  {
        origin:"*"
    }
});

// middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(wordRouter);
app.use(userRouter);



// cors things 
app.use(cors());

//---------------------------------------------------CHAT --------------------------------------------------------------------------------------------

// connection is a predefined emit 
// on va d'abord verifier si notre utilisateur est dans notre base de données, si ce n'est pas le cas on va l'ajouter
io.on("connection",(socket)=>{
    socket.join("AI_group");
    console.log(socket.id +" connected");
    socket.on("user_name",(user_name)=>{
        console.log(user_name);
        userchat.findOne({user_name:user_name},(err,user)=>{
            if(user){
                socket.user_name=user_name;
            }
            else {
                var user = new userchat;
                user.user_name=user_name;
                user.save();
                socket.user_name=user_name;
            }
            // to send all the old messages once a user joins the chat 
            message.find((err,messages)=>{
                socket.emit('oldmessages',messages);
            });

        })
    });
    socket.on("sendMsg", (msg)=>{
        var Message= new message();
        Message.msg=msg["msg"];
        Message.sender=msg["sender"];
        Message.send_time=msg["send_time"];
        Message.id_room=msg["id_room"];
        Message.save();
        console.log(msg);
        socket.broadcast.to("AI_group").emit("sendMsgServer",{...msg});
    });

//------------------------------------------------------STATISTIQUES---------------------------------------------------------------------------------------------------------------
    // the totalnumber of users 
    var query = user.find();
    query.count(function (err, count) {
    if (err) {
        console.log(err);}
    else {
        console.log("Count is", count);
        total_number=count;
        console.log(total_number);
        socket.emit("totalnumber",(total_number));

    }

});


    // disconnect
    socket.on("disconnect",()=>{
        console.log(socket.id+" disconnected");
 
    });


}),

// body parser 

//app.use(bodyParser.json());
//app.use(bodyParser.urlencoded({extended: false}))

server.listen(port,()=>{
    console.log("server started"); 
}
);
