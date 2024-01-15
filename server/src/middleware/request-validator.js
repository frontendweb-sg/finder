import { validationResult } from "express-validator"

export const requestValidator = (req, res, next) => {
    const result = validationResult(req);
    if (!result.isEmpty) {
        throw new Error(result.array[0].msg);
    }

    next();
}