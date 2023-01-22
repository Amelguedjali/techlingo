const express = require('express');
const mongodb = require('mongodb');

// Create an express app
const app = express();

// Parse incoming requests with JSON payloads
app.use(express.json());

// Connect to the MongoDB server
mongodb.MongoClient.connect('mongodb+srv://mel:1234@users.tywrtcp.mongodb.net/?retryWrites=true&w=majority', (err, client) => {
    if (err) {
        console.error(err);
        return;
    }

    // Connect to the "chat" database and the "users" collection
    const db = client.db('chat');
    const usersCollection = db.collection('users');

    // Get the user profile data from the database
    app.get('/profile/:id', (req, res) => {
        const userId = req.params._id;
        usersCollection.findOne({ id: userId }, (err, user) => {
            if (err) {
                console.error(err);
                res.status(500).send();
                return;
            }
            if (!user) {
                res.status(404).send();
                return;
            }
            res.send(user);
        });
    });

    // Update the user profile data in the database
    app.post('/profile/:id', (req, res) => {
        const userId = req.params._id;
        const updatedData = req.body;
        usersCollection.updateOne({ id: userId }, { $set: updatedData }, (err, result) => {
            if (err) {
                console.error(err);
                res.status(500).send();
                return;
            }
            res.send();
        });
    });


    // Start the server
    app.listen(3000, () => {
        console.log('Listening on port 3000');
    });



});