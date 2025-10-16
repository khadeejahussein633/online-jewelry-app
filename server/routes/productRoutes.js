import express from "express";
import { createProduct, deleteProduct, updatedProduct } from "../controllers/productControl.js";


const productRouter = express.Router()
productRouter.post("/create-product", createProduct)
productRouter.put("/update-product/:id", updatedProduct)
productRouter.delete("/delete-product/:id", deleteProduct)

export default productRouter