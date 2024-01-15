export const errorHandler = (error, req, res, next) => {
    req.send({
        erros: [
            {
                message: error.message,
                status: error.status
            }
        ]
    });
}