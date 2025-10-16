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

    const categories = await Categories.findById(id);

    if (!categories) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "Categories not found" });
    }

    categories.image = image;
    categories.name = name;
    categories.Color = Color;

  
    const updatedProduct = await product.save();

    res.status(200).json({
        success: true,
        data: updatedProduct,
        message: "Categories updated successfully"
    });

    
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};



export const deleteCategeries = async (req, res) => {
  try {
  

    const categories = await Categories.findByIdAndDelete(req.params.id);

    if (!categories) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "Categories not found" });
    }


    res.status(200).json({
        success: true,
        data: null,
        message: "Categories deleted successfully"
    });

    
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};