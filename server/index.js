const express = require('express'); 
const mongoose = require('mongoose');

const addressRouter = require('./routes/address');
const adminRouter = require('./routes/admin');

// IMPORT from other files
const authRouter = require('./routes/auth');
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');
 

// INIT
//mongodb+srv://radheshyam:Jangid@cluster0.pg5114e.mongodb.net/?retryWrites=true&w=majority
//mongosh "mongodb+srv://cluster0.pg5114e.mongodb.net/myFirstDatabase" --apiVersion 1 --username radheshyam
//mongodb+srv://radheshyam:<password>@cluster0.pg5114e.mongodb.net/test
const PORT = process.env.PORT || 3000 // specify port number
const app = express(); // initialize express
const DB = "mongodb+srv://radheshyam:Jangid@cluster0.pg5114e.mongodb.net/?retryWrites=true&w=majority" // Please Enter your MongoDB URL
// Middleware
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);
app.use(addressRouter);


// Connections
mongoose.connect(DB)
    .then(() => {
    console.log("Connection MongoDb Successful");
}).catch((e) => { 
    console.log(e)
 });



app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
}); // listen for connections, 0.0.0.0 => connect from anywhere

