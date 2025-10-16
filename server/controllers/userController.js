import User from "../models/user.js";
import generateToken from "../token/generateToken.js";

export const createNewUser = async (req, res) => {
    try {
        const { name, email, phone, password } = req.body;

        const newUser = new User({
            name,
            email,
            phone,
            password,

        });

        const savedUser = await newUser.save();

        const token = generateToken(savedUser._id);

        res.status(201).json({
            token,
            success: true,
            data: savedUser,
            message: "User created successfully",
        });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

export const login = async (req, res) => {
    try {
        const { email, password } = req.body;
        const isUserExists = await User.findOne({ email: email });

        if (!isUserExists) {
            return res.status(404).json({
                success: false,
                data: null,
                message: "user not found"
            })

        }
        if (isUserExists.password != password) {
            return res.status(400).json({
                success: false,
                data: null,
                message: "incorrect password"
            })


        }
        const token = generateToken(isUserExists._id);
        res.status(200).json({
            token,
            success: true,
            data: isUserExists,
            message: "login succesfully",

        })
    } catch (error) {
        res.status(500).json({
            error: error.message
        })
    }
};

export const updateUser = async (req, res) => {
  try {
    const {id } = req.params
    const { name, email, phone, password } = req.body;

    const user = await User.findById(id);

    if (!user) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "user not found" });
    }

    user.name = name;
    user.email = email;
    user.phone = phone;
    user.password = password;

  
    const updatedUser = await user.save();

    res.status(200).json({
        success: true,
        data: updatedUser,
        message: "User updated successfully"
    });

    
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteUser = async (req, res) => {
  try {
  

    const user = await User.findByIdAndDelete(req.params.id);

    if (!user) {
      return res.status(404).json({ 
        success: false,
        data: null,
        message: "user not found" });
    }


    res.status(200).json({
        success: true,
        data: null,
        message: "User deleted successfully"
    });

    
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};