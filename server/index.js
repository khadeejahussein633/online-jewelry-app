import express from "express";
import connectDb from "./config/db.js";
import dotenv from "dotenv";
import userRouter from "./routes/userRoutes.js";
const app = express()

app.use(express.json())
dotenv.config();
connectDb()

app.use("/api", userRouter)
app.listen(5000, ()=>{
    console.log("server is running on port 5000");
    
})