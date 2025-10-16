import mongoose from "mongoose";

const connectDb = async()=>{
    try {
        await mongoose.connect(process.env.dbURL)
        console.log("database connected succesfully");
    } catch (error) {
        console.error("Database connection failed:", error.message);
    }
}

export default connectDb