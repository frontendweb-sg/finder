import mongoose from 'mongoose';

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