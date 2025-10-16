import Categories from "../models/categoryModel.js";

export const createCategories = async (req, res) => {
    try {
        const { image, name, Color } = req.body;
        const newCategories = new Categories({
            image, name, Color

        });
        const savedCategories = await newCategories.save();
        res.status(201).json({
            success: true,
            data: savedCategories,
            message: "Categories created successfully",
        });
    } catch (error) {
       res.status(500).json({ error: error.message });

    }
}

export  const getAllCategories= async (req,res)=>{
    try {
 const categoriess =await Categories.find()
    res.status(200).json(categoriess)
        
    } catch (error) {
        
    }
   
} 


export const updatedCategories = async (req, res) => {
  try {
    const {id } = req.params
    const { image, name, Color  } = req.body;

    const product = await Product.findById(id);

    if (!product) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "product not found" });
    }

    product.image = image;
    product.name = name;
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