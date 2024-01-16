import { config } from 'dotenv';
config({ path: `.env.${process.env.NODE_ENV}` });
import cors from 'cors';
import express from 'express';
import { expressMiddleware as apolloMiddleware } from '@apollo/server/express4'
import { ApolloServer } from '@apollo/server';
import { connectDb } from './db/db.js';
import { readFile } from 'node:fs/promises';
import { resolvers } from './resolvers.js'
import { errorHandler } from './middleware/error-handler.js';
import { authRoute } from './routes/auth.js';


// graphql schema
const fileUrl = new URL("./schema.graphql", import.meta.url);
const typeDefs = await readFile(fileUrl, "utf8");


// app
const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json())
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"))
app.use(cors());

app.use("/api/auth", authRoute);

app.use(errorHandler);
// listen
app.listen(PORT, async () => {
    await connectDb();
    console.log('server is running on port ' + PORT);
})
