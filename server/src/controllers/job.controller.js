import { Job } from "../models/job.model.js"

/**
 * Get all jobs
 */
export const getJobs = async () => {
    try {
        const jobs = await Job.find({});
        return jobs;
    }
    catch (error) { }
}


/**
 * Get job by id
 * @param {id} id 
 * @returns 
 */
export const getJob = async (id) => {
    try {
        const job = await Job.findById(id);
        if (!job) {
            throw new Error("No job found!");
        }
        return job;
    }
    catch (error) { }
}