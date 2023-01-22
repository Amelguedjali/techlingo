const mongodb = require('mongodb');
const readline = require('readline');

// Connect to the MongoDB server
mongodb.MongoClient.connect('mongodb+srv://mel:1234@users.tywrtcp.mongodb.net/?retryWrites=true&w=majority', (err, client) => {
    if (err) {
        console.error(err);
        return;
    }

    // Connect to the "quiz" database and the "questions" collection
    const db = client.db('chat');
    const questionsCollection = db.collection('software');

    // Create a new interface using the `readline` module
    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    let score = 0;

    const askQuestion = (i) => {
        // Get the next question from the database
        questionsCollection.findOne({ index: i }, (err, question) => {
            if (err) {
                console.error(err);
                rl.close();
                return;
            }

            if (question) {
                console.log(question.question);
                for (let j = 0; j < question.choices.length; j++) {
                    console.log(`${j + 1}: ${question.choices[j]}`);
                }
                rl.question('Enter the number of your choice: ', (answer) => {
                    if (question.choices[answer - 1] === question.answer) {
                        console.log('Correct!');
                        score++;
                    } else {
                        console.log('Incorrect.');
                    }
                    askQuestion(i + 1);
                });
            } else {
                console.log(`Quiz complete! You scored ${score}/${i}`);
                rl.close();
            }
        });
    }

    askQuestion(0);
});