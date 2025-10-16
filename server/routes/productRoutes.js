import express from "express";
import { createProduct, getAllProducts } from "../controllers/productControl.js";


const productRouter = express.Router()
productRouter.post("/create-product", createProduct)
productRouter.get("/read-product", getAllProducts)
export default productRouter