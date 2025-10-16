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