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

export const updatedProduct = async (req, res) => {
  try {
    const {id } = req.params
    const { name, description, price, image } = req.body;

    const product = await Product.findById(id);

    if (!product) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "product not found" });
    }

    product.name = name;
    product.description = description;
    product.price = price;
    product.image = image;

  
    const updatedProduct = await product.save();

    res.status(200).json({
        success: true,
        data: updatedProduct,
        message: "Product updated successfully"
    });

    
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};




export const deleteProduct = async (req, res) => {
  try {
  

    const product = await Product.findByIdAndDelete(req.params.id);

    if (!product) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "Product not found" });
    }


    res.status(200).json({
        success: true,
        data: null,
        message: "Product deleted successfully"
    });

    
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};