import { config } from 'dotenv';
config({ path: `.env.${process.env.NODE_ENV}` });
import cors from 'cors';
import express from 'express';
import { expressMiddleware as apolloMiddleware } from '@apollo/server/express4'
import { ApolloServer } from '@apollo/server';
import { connectDb } from './db/db.js';
import { readFile } from 'node:fs/promises';
import { resolvers } from './resolvers.js'

// app
const app = express();
const PORT = process.env.PORT || 4000;
app.use(cors(), express.json());

// graphql schema
const fileUrl = new URL("./schema.graphql", import.meta.url);
const typeDefs = await readFile(fileUrl, "utf8");

// apollo server
const server = new ApolloServer({ typeDefs, resolvers });
await server.start();
app.use('/graphql', apolloMiddleware(server));

// listen
app.listen(PORT, async () => {
    await connectDb();
    console.log(`Server is running on 4000`);
});

