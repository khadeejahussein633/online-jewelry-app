import mongoose from 'mongoose'


const productSchema = mongoose.Schema({
    name : {
        type: String,
        required: true
    },
    description: {
        type: String,
        required: true
    },
    price: {
        type: Number,
        required: true
    },
    image: {
        type: String,
        required: true
    },
  
},{
    timestamps: true
})

const Products = mongoose.model("products",productSchema)

export default Products