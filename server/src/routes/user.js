import { Router } from "express";
import { userSingup } from "../controllers/user";
import { body } from 'express-validator'
import { User } from "../models/user";
import { requestValidator } from "../middleware/request-validator";


const route = Router();

route.post("/singup", [
    body("name", "Name is required").notEmpty(),
    body("email", "Email is required!").isEmail().notEmpty()
        .custom(async (value) => {
            const user = await User.findOne({ email: value });
            if (user) {
                throw new Error("User with this email already existed!")
            }
            return true;
        }),
    body("password", "Field is required!").notEmpty().isAlphanumeric()
], requestValidator, userSingup);


route.post("/", [
    body("email", "Email is required!").isEmail().notEmpty()
        .custom(async (value) => {
            const user = await User.findOne({ email: value });
            if (!user) {
                throw new Error("Email not found, please register!")
            }
            return true;
        }),
    body("password", "Field is required!").notEmpty().isAlphanumeric()
], requestValidator, userSignin)

export { route as userRoute }