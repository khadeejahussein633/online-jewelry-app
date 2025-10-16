import express from "express";
import connectDb from "./config/db.js";
import dotenv from "dotenv";
import userRouter from "./routes/userRoutes.js";
import productRouter from "./routes/productRoutes.js";
const app = express()

app.use(express.json())
dotenv.config();
connectDb()

app.use("/api", userRouter)
app.use("/api", productRouter)

app.listen(5000, ()=>{
    console.log("server is running on port 5000");
    
})