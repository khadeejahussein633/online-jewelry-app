import Products from "../models/productModel.js";

export const createProduct = async (req, res) => {
    try {
        const { name, description, price, image } = req.body;
        const newProduct = new Products({
            name, description, price, image

        });
        const savedProduct = await newProduct.save();
        res.status(201).json({
            success: true,
            data: savedProduct,
            message: "product created successfully",
        });
    } catch (error) {
       res.status(500).json({ error: error.message });

    }
}