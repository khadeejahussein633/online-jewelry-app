import mongoose from 'mongoose'


const categoriesSchema = mongoose.Schema({
    image : {
        type: String,
        required: true
    },
    name: {
        type: String,
        required: true  
    },
    Color: {
        type: String,
        required: true
    },
  
},{
    timestamps: true
})

const Categories = mongoose.model("categories",categoriesSchema)

export default Categories