import mongoose from 'mongoose';
console.log(process.env.NODE_ENV);
const connectDb = async () => {
    try {
        await mongoose.connect(process.env.MONGODB_URL);
        console.log('DATABASE CONNECTED');
    } catch (error) {
        console.log(
            `
            Database error ${error}
            `
        )
    }
}

export {
    connectDb
}