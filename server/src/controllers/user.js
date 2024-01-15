import { User } from "../models/user";

export const userSingup = async (req, res, next) => {
    try {
        const newUser = new User(req.body);
        await newUser.save();
        return req.send(newUser);
    }
    catch (error) {

    }
}

export const userSignin = async (req, res, next) => {
    try {
        const { } = req.body;
    }
    catch (error) {

    }
}