import express from "express";
import { createCategories, getAllCategories } from "../controllers/categoriesControl";


const categoriesRouter = express.Router()
categoriesRouter.post("/create-categories", createCategories)
categoriesRouter.get("/read-categories", getAllCategories)
export default categoriesRouter