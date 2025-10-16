import express from "express";
<<<<<<< HEAD
import { createProduct, deleteProduct, updatedProduct } from "../controllers/productControl.js";
=======
import { createProduct, getAllProducts } from "../controllers/productControl.js";
>>>>>>> 658653c49f4b2f5ad49abb3750bc974e758dd7bc


const productRouter = express.Router()
productRouter.post("/create-product", createProduct)
<<<<<<< HEAD
productRouter.put("/update-product/:id", updatedProduct)
productRouter.delete("/delete-product/:id", deleteProduct)

=======
productRouter.get("/read-product", getAllProducts)
>>>>>>> 658653c49f4b2f5ad49abb3750bc974e758dd7bc
export default productRouter