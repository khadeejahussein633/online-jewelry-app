import express from "express";
import { createNewUser, deleteUser, login, updateUser } from "../controllers/userController.js";
import { admin, protect } from "../middleware/authMidldleware.js";

const userRouter = express.Router()

userRouter.post("/create-user", createNewUser)
userRouter.post("/login", login);
userRouter.put("/update-user/:id", updateUser)
userRouter.delete("/delete-user/:id", protect, admin, deleteUser)

export default userRouter



