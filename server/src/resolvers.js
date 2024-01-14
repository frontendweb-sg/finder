import { getJob, getJobs } from "./controllers/job.controller.js";

export const resolvers = {
    Query: {
        jobs: async () => await getJobs(),
        job: async (_, args) => await getJob(args.jobId),
    }
}