const functions = require("firebase-functions");
const region = "asia-east1";
const spec = {
    memory: "1GB"
  };
exports.LineMessAPI = functions.region(region).runWith(spec).https.onRequest((request, response) => {
    response.send("Hello from CloudFunction!");
});
// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
